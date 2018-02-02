.class Lcom/oneplus/gallery/BurstViewer$19;
.super Ljava/lang/Object;
.source "BurstViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/BurstViewer;->saveSelectedMedia(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/BurstViewer;

.field final synthetic val$closeViewerWhenCancelled:Z


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/BurstViewer;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/BurstViewer;
    .param p2, "val$closeViewerWhenCancelled"    # Z

    .prologue
    .line 1558
    iput-object p1, p0, Lcom/oneplus/gallery/BurstViewer$19;->this$0:Lcom/oneplus/gallery/BurstViewer;

    iput-boolean p2, p0, Lcom/oneplus/gallery/BurstViewer$19;->val$closeViewerWhenCancelled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1563
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1564
    iget-boolean v0, p0, Lcom/oneplus/gallery/BurstViewer$19;->val$closeViewerWhenCancelled:Z

    if-eqz v0, :cond_0

    .line 1565
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$19;->this$0:Lcom/oneplus/gallery/BurstViewer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/BurstViewer;->close(I)V

    .line 1561
    :cond_0
    return-void
.end method
