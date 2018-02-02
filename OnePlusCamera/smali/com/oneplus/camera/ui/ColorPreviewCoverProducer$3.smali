.class Lcom/oneplus/camera/ui/ColorPreviewCoverProducer$3;
.super Ljava/lang/Object;
.source "ColorPreviewCoverProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer$3;->this$0:Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer$3;->this$0:Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->-wrap3(Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;)V

    .line 38
    return-void
.end method
