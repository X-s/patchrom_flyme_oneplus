.class public interface abstract Lcom/oneplus/camera/ui/OnScreenHint;
.super Ljava/lang/Object;
.source "OnScreenHint.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final FLAG_HAS_BACKGROUND:I = 0x4

.field public static final FLAG_HIGH_PRIORITY:I = 0x8

.field public static final FLAG_INVISIBLE_WHEN_SELF_TIMER:I = 0x10

.field public static final FLAG_NO_ANIMATION:I = 0x2

.field public static final FLAG_VISIBLE_WHEN_CAPTURING:I = 0x1

.field public static final PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 40
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/ui/OnScreenHint;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/OnScreenHint;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 13
    return-void
.end method


# virtual methods
.method public abstract showHint(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract showHint(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract showHint(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract updateHint(Lcom/oneplus/base/Handle;Landroid/graphics/drawable/Drawable;I)Z
.end method

.method public abstract updateHint(Lcom/oneplus/base/Handle;Ljava/lang/CharSequence;I)Z
.end method
