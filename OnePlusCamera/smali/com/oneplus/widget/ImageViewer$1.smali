.class Lcom/oneplus/widget/ImageViewer$1;
.super Ljava/lang/Object;
.source "ImageViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/ImageViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/widget/ImageViewer;


# direct methods
.method constructor <init>(Lcom/oneplus/widget/ImageViewer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/widget/ImageViewer;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/oneplus/widget/ImageViewer$1;->this$0:Lcom/oneplus/widget/ImageViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer$1;->this$0:Lcom/oneplus/widget/ImageViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/widget/ImageViewer;->-set1(Lcom/oneplus/widget/ImageViewer;Z)Z

    .line 128
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer$1;->this$0:Lcom/oneplus/widget/ImageViewer;

    invoke-static {v0}, Lcom/oneplus/widget/ImageViewer;->-wrap0(Lcom/oneplus/widget/ImageViewer;)V

    .line 125
    return-void
.end method
