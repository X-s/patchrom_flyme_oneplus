.class Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem$1;
.super Ljava/lang/Object;
.source "BurstViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;-><init>(Lcom/oneplus/gallery/BurstViewer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem$1;->this$1:Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem$1;->this$1:Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;

    iget-object v0, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->this$0:Lcom/oneplus/gallery/BurstViewer;

    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem$1;->this$1:Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;

    iget v1, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->mediaIndex:I

    invoke-static {v0, v1}, Lcom/oneplus/gallery/BurstViewer;->-wrap20(Lcom/oneplus/gallery/BurstViewer;I)V

    .line 385
    return-void
.end method
