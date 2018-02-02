.class Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$1;
.super Ljava/lang/Object;
.source "CameraSwtichAnimationIcon.java"

# interfaces
.implements Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$1;->this$0:Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V
    .locals 1
    .param p1, "oldValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;
    .param p2, "newValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$1;->this$0:Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->-get1(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$1;->this$0:Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;

    invoke-static {v0, p1, p2}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->-wrap0(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V

    .line 36
    :cond_0
    return-void
.end method
