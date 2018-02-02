.class Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$4;
.super Ljava/lang/Object;
.source "CameraSwtichAnimationIcon.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Lcom/oneplus/camera/capturemode/CaptureMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$4;->this$0:Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 7
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/capturemode/CaptureMode;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/capturemode/CaptureMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    const/4 v6, 0x0

    .line 114
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$4;->this$0:Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->-get2(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;)Lcom/oneplus/camera/ui/PreviewCover;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$4;->this$0:Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->-get2(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;)Lcom/oneplus/camera/ui/PreviewCover;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$Style;->COLOR_BLACK:Lcom/oneplus/camera/ui/PreviewCover$Style;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ui/PreviewCover;->getPreviewCoverState(Lcom/oneplus/camera/ui/PreviewCover$Style;)Lcom/oneplus/camera/ui/PreviewCover$UIState;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->OPENED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    if-ne v0, v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$4;->this$0:Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;

    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$4;->this$0:Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->-get0(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;)Landroid/widget/ImageView;

    move-result-object v2

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->-wrap1(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 112
    :cond_0
    return-void
.end method
