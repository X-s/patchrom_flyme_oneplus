.class Lcom/oneplus/tuner/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/MainActivity;->showController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/MainActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/MainActivity;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/oneplus/tuner/MainActivity$6;->this$0:Lcom/oneplus/tuner/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity$6;->this$0:Lcom/oneplus/tuner/MainActivity;

    # getter for: Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;
    invoke-static {v0}, Lcom/oneplus/tuner/MainActivity;->access$000(Lcom/oneplus/tuner/MainActivity;)Lcom/oneplus/tuner/fragment/ControllerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity$6;->this$0:Lcom/oneplus/tuner/MainActivity;

    invoke-virtual {v0}, Lcom/oneplus/tuner/MainActivity;->hideFlipper()Z

    .line 440
    :cond_0
    return-void
.end method
