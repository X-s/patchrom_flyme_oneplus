.class Lcom/oneplus/camera/ui/PreviewCoverImpl$3;
.super Lcom/oneplus/base/Handle;
.source "PreviewCoverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/PreviewCoverImpl;->showPreviewCover(Lcom/oneplus/camera/ui/PreviewCover$Style;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/PreviewCoverImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/PreviewCoverImpl;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl$3;->this$0:Lcom/oneplus/camera/ui/PreviewCoverImpl;

    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl$3;->this$0:Lcom/oneplus/camera/ui/PreviewCoverImpl;

    # invokes: Lcom/oneplus/camera/ui/PreviewCoverImpl;->onPreviewCoverHandleClose(Lcom/oneplus/base/Handle;I)V
    invoke-static {v0, p0, p1}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->access$300(Lcom/oneplus/camera/ui/PreviewCoverImpl;Lcom/oneplus/base/Handle;I)V

    .line 197
    return-void
.end method
