.class Lcom/oneplus/gallery/BurstViewer$14;
.super Ljava/lang/Object;
.source "BurstViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/BurstViewer;->deleteSelectedMedia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/BurstViewer;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/BurstViewer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/BurstViewer;

    .prologue
    .line 668
    iput-object p1, p0, Lcom/oneplus/gallery/BurstViewer$14;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 673
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 674
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$14;->this$0:Lcom/oneplus/gallery/BurstViewer;

    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer$14;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-static {v1}, Lcom/oneplus/gallery/BurstViewer;->-get2(Lcom/oneplus/gallery/BurstViewer;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/BurstViewer;->-wrap3(Lcom/oneplus/gallery/BurstViewer;Ljava/util/Collection;Z)V

    .line 671
    return-void
.end method
