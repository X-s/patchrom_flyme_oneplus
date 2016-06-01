.class Lcom/oneplus/tuner/MainActivity1$1$1;
.super Ljava/lang/Object;
.source "MainActivity1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/MainActivity1$1;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/tuner/MainActivity1$1;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/MainActivity1$1;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/oneplus/tuner/MainActivity1$1$1;->this$1:Lcom/oneplus/tuner/MainActivity1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity1$1$1;->this$1:Lcom/oneplus/tuner/MainActivity1$1;

    iget-object v0, v0, Lcom/oneplus/tuner/MainActivity1$1;->this$0:Lcom/oneplus/tuner/MainActivity1;

    # getter for: Lcom/oneplus/tuner/MainActivity1;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;
    invoke-static {v0}, Lcom/oneplus/tuner/MainActivity1;->access$000(Lcom/oneplus/tuner/MainActivity1;)Lcom/oneplus/tuner/fragment/ControllerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity1$1$1;->this$1:Lcom/oneplus/tuner/MainActivity1$1;

    iget-object v0, v0, Lcom/oneplus/tuner/MainActivity1$1;->this$0:Lcom/oneplus/tuner/MainActivity1;

    # getter for: Lcom/oneplus/tuner/MainActivity1;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;
    invoke-static {v0}, Lcom/oneplus/tuner/MainActivity1;->access$000(Lcom/oneplus/tuner/MainActivity1;)Lcom/oneplus/tuner/fragment/ControllerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/tuner/fragment/ControllerFragment;->onReload()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity1$1$1;->this$1:Lcom/oneplus/tuner/MainActivity1$1;

    iget-object v0, v0, Lcom/oneplus/tuner/MainActivity1$1;->this$0:Lcom/oneplus/tuner/MainActivity1;

    iget-object v0, v0, Lcom/oneplus/tuner/MainActivity1;->mPersonalView:Lcom/oneplus/tuner/view/PersonalView;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity1$1$1;->this$1:Lcom/oneplus/tuner/MainActivity1$1;

    iget-object v0, v0, Lcom/oneplus/tuner/MainActivity1$1;->this$0:Lcom/oneplus/tuner/MainActivity1;

    iget-object v0, v0, Lcom/oneplus/tuner/MainActivity1;->mPersonalView:Lcom/oneplus/tuner/view/PersonalView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/view/PersonalView;->tryToLogin()V

    .line 68
    :cond_1
    return-void
.end method
