.class Lcom/oneplus/gallery/OPGalleryActivity$27;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGalleryActivity;->updateSnackbarVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/OPGalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGalleryActivity;)V
    .locals 0

    .prologue
    .line 2670
    iput-object p1, p0, Lcom/oneplus/gallery/OPGalleryActivity$27;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2674
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$27;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery/OPGalleryActivity;->m_Snackbar:Landroid/view/View;
    invoke-static {v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$3900(Lcom/oneplus/gallery/OPGalleryActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2675
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$27;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;

    # setter for: Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;
    invoke-static {v0, v1}, Lcom/oneplus/gallery/OPGalleryActivity;->access$4002(Lcom/oneplus/gallery/OPGalleryActivity;Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;)Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;

    .line 2676
    return-void
.end method
