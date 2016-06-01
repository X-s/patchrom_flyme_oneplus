.class final Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;
.super Lcom/oneplus/base/Handle;
.source "ProcessingDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ProcessingDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DialogHandle"
.end annotation


# instance fields
.field public final message:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/oneplus/camera/ui/ProcessingDialogImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/ui/ProcessingDialogImpl;Ljava/lang/CharSequence;)V
    .locals 1
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;->this$0:Lcom/oneplus/camera/ui/ProcessingDialogImpl;

    .line 50
    const-string v0, "ProcessingDialog"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object p2, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;->message:Ljava/lang/CharSequence;

    .line 52
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;->this$0:Lcom/oneplus/camera/ui/ProcessingDialogImpl;

    # invokes: Lcom/oneplus/camera/ui/ProcessingDialogImpl;->closeProcessingDialog(Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->access$300(Lcom/oneplus/camera/ui/ProcessingDialogImpl;Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;)V

    .line 58
    return-void
.end method
