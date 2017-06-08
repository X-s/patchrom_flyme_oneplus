.class Lcom/oneplus/settings/ui/OPProgressDialog$2;
.super Ljava/util/TimerTask;
.source "OPProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPProgressDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPProgressDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPProgressDialog;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPProgressDialog$2;->this$0:Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 116
    const-string v0, "OPProgressDialog"

    const-string v1, "timerOutTast......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPProgressDialog$2;->this$0:Lcom/oneplus/settings/ui/OPProgressDialog;

    # getter for: Lcom/oneplus/settings/ui/OPProgressDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/settings/ui/OPProgressDialog;->access$100(Lcom/oneplus/settings/ui/OPProgressDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 118
    return-void
.end method
