.class Lcom/oneplus/camera/ui/LaunchAnimation$5;
.super Ljava/lang/Object;
.source "LaunchAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/LaunchAnimation;->onCameraPreviewReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/LaunchAnimation;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/LaunchAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/LaunchAnimation;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/oneplus/camera/ui/LaunchAnimation$5;->this$0:Lcom/oneplus/camera/ui/LaunchAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation$5;->this$0:Lcom/oneplus/camera/ui/LaunchAnimation;

    invoke-static {v0}, Lcom/oneplus/camera/ui/LaunchAnimation;->-get3(Lcom/oneplus/camera/ui/LaunchAnimation;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    return-void
.end method
