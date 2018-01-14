.class Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$3;
.super Landroid/database/ContentObserver;
.source "DdsCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$3;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 278
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$3;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-string/jumbo v1, "softSIM Settings change"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$3;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 277
    return-void
.end method
