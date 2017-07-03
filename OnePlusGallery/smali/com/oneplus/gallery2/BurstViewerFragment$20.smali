.class Lcom/oneplus/gallery2/BurstViewerFragment$20;
.super Lcom/oneplus/gallery2/GalleryDialogFragment;
.source "BurstViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/BurstViewerFragment;->saveMediasAndDeleteOthers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

.field final synthetic val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/GalleryActivity;)V
    .locals 0

    .prologue
    .line 2276
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$20;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    iput-object p2, p0, Lcom/oneplus/gallery2/BurstViewerFragment$20;->val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2283
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$20;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;
    invoke-static {v4}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$3600(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 2284
    .local v2, "size":I
    if-ne v2, v6, :cond_0

    .line 2286
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$20;->val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    const v5, 0x7f090002

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2287
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$20;->val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    const v5, 0x7f090004

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2296
    .local v1, "message":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$20;->val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    sget-object v5, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2297
    .local v0, "isDarkMode":Z
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment$20;->val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    if-eqz v0, :cond_1

    const v4, 0x7f0a000d

    :goto_1
    invoke-direct {v5, v6, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/oneplus/gallery2/BurstViewerFragment$20$2;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$20$2;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment$20;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/oneplus/gallery2/BurstViewerFragment$20$1;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$20$1;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment$20;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 2291
    .end local v0    # "isDarkMode":Z
    .end local v1    # "message":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$20;->val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    const v5, 0x7f090003

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2292
    .restart local v3    # "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$20;->val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    const v5, 0x7f090005

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_0

    .line 2297
    .restart local v0    # "isDarkMode":Z
    :cond_1
    const v4, 0x7f0a000b

    goto :goto_1
.end method
