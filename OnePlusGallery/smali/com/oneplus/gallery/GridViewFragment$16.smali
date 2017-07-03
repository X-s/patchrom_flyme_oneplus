.class Lcom/oneplus/gallery/GridViewFragment$16;
.super Ljava/lang/Object;
.source "GridViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/GridViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/GridViewFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/GridViewFragment;)V
    .locals 0

    .prologue
    .line 2442
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment$16;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$16;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery/Gallery;->startCamera()Z

    .line 2446
    return-void
.end method
