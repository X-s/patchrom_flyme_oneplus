.class public interface abstract Lcom/oneplus/camera/ui/SecondLayerBar;
.super Ljava/lang/Object;
.source "SecondLayerBar.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final FLAG_NO_ANIMATION:I = 0x1

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
    .locals 6

    .prologue
    .line 25
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/ui/SecondLayerBar;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/SecondLayerBar;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 15
    return-void
.end method


# virtual methods
.method public abstract show(FFLjava/util/List;I)Lcom/oneplus/base/Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Landroid/view/View;",
            ">(FF",
            "Ljava/util/List",
            "<TTValue;>;I)",
            "Lcom/oneplus/base/Handle;"
        }
    .end annotation
.end method

.method public abstract show(FFLjava/util/List;Landroid/widget/ProgressBar;I)Lcom/oneplus/base/Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Landroid/view/View;",
            ">(FF",
            "Ljava/util/List",
            "<TTValue;>;",
            "Landroid/widget/ProgressBar;",
            "I)",
            "Lcom/oneplus/base/Handle;"
        }
    .end annotation
.end method
