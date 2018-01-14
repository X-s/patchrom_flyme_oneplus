.class Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;
.super Ljava/lang/Object;
.source "DdsCardSelectionController.java"

# interfaces
.implements Lcom/qualcomm/qcrilhook/QcRilHookCallback;


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
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQcRilHookDisconnected()V
    .locals 0

    .prologue
    .line 590
    return-void
.end method

.method public onQcRilHookReady()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-string/jumbo v1, "QcRilHook is ready"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-set1(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Z)Z

    .line 586
    return-void
.end method
