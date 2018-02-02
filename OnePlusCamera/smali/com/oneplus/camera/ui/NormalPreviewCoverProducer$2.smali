.class Lcom/oneplus/camera/ui/NormalPreviewCoverProducer$2;
.super Ljava/lang/Object;
.source "NormalPreviewCoverProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer$2;->this$0:Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer$2;->this$0:Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;

    invoke-static {v0}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->-wrap1(Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;)V

    .line 31
    return-void
.end method
