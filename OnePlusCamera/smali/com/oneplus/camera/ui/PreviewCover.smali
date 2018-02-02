.class public interface abstract Lcom/oneplus/camera/ui/PreviewCover;
.super Ljava/lang/Object;
.source "PreviewCover.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/PreviewCover$Style;,
        Lcom/oneplus/camera/ui/PreviewCover$UIState;
    }
.end annotation


# static fields
.field public static final FLAG_HIDE_PREVIEW_COVER_DIRECTLY:I = 0x1

.field public static final PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/ui/PreviewCover$UIState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 18
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "UIState"

    const-class v2, Lcom/oneplus/camera/ui/PreviewCover$UIState;

    const-class v3, Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v4, Lcom/oneplus/camera/ui/PreviewCover$UIState;->CLOSED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/PreviewCover;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    .line 7
    return-void
.end method


# virtual methods
.method public abstract showPreviewCover(Lcom/oneplus/camera/ui/PreviewCover$Style;I)Lcom/oneplus/base/Handle;
.end method
