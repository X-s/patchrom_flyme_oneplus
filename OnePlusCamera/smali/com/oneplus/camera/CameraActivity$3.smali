.class Lcom/oneplus/camera/CameraActivity$3;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$3;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V
    .locals 1
    .param p1, "oldValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;
    .param p2, "newValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$3;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v0, p1, p2}, Lcom/oneplus/camera/CameraActivity;->-wrap14(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V

    .line 620
    return-void
.end method
