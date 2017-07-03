.class Lcom/oneplus/gallery2/OPGallery$9;
.super Lcom/oneplus/gallery2/GalleryDialogFragment;
.source "OPGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/OPGallery;->deleteMediaSet(Ljava/util/List;Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/OPGallery;

.field final synthetic val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

.field final synthetic val$mediaSetToDelete:Ljava/util/List;

.field final synthetic val$progressBarRef:Lcom/oneplus/base/Ref;

.field final synthetic val$progressRef:Lcom/oneplus/base/Ref;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/gallery2/GalleryActivity;Ljava/util/List;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)V
    .locals 0

    .prologue
    .line 961
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGallery$9;->this$0:Lcom/oneplus/gallery2/OPGallery;

    iput-object p2, p0, Lcom/oneplus/gallery2/OPGallery$9;->val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    iput-object p3, p0, Lcom/oneplus/gallery2/OPGallery$9;->val$mediaSetToDelete:Ljava/util/List;

    iput-object p4, p0, Lcom/oneplus/gallery2/OPGallery$9;->val$progressBarRef:Lcom/oneplus/base/Ref;

    iput-object p5, p0, Lcom/oneplus/gallery2/OPGallery$9;->val$progressRef:Lcom/oneplus/base/Ref;

    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 965
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGallery$9;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 966
    .local v0, "activity":Landroid/app/Activity;
    iget-object v5, p0, Lcom/oneplus/gallery2/OPGallery$9;->val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    sget-object v6, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v6}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 967
    .local v2, "isDarkMode":Z
    new-instance v1, Landroid/app/Dialog;

    if-eqz v2, :cond_0

    const v5, 0x7f0a000c

    :goto_0
    invoke-direct {v1, v0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 969
    .local v1, "dialog":Landroid/app/Dialog;
    iget-object v5, p0, Lcom/oneplus/gallery2/OPGallery$9;->val$mediaSetToDelete:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v10, :cond_1

    .line 971
    const v5, 0x7f090024

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/oneplus/gallery2/OPGallery$9;->val$mediaSetToDelete:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v9

    check-cast v5, Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v8, Lcom/oneplus/gallery2/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v8}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 977
    .local v4, "title":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 980
    const v5, 0x7f03000a

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 981
    iget-object v6, p0, Lcom/oneplus/gallery2/OPGallery$9;->val$progressBarRef:Lcom/oneplus/base/Ref;

    const v5, 0x102000d

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    invoke-interface {v6, v5}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 982
    iget-object v5, p0, Lcom/oneplus/gallery2/OPGallery$9;->val$progressRef:Lcom/oneplus/base/Ref;

    invoke-interface {v5}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v5, p0, Lcom/oneplus/gallery2/OPGallery$9;->val$progressBarRef:Lcom/oneplus/base/Ref;

    invoke-interface {v5}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 983
    .local v3, "progress":I
    if-nez v3, :cond_2

    .line 984
    iget-object v5, p0, Lcom/oneplus/gallery2/OPGallery$9;->val$progressBarRef:Lcom/oneplus/base/Ref;

    invoke-interface {v5}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    invoke-virtual {v5, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 989
    :goto_2
    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 990
    return-object v1

    .line 967
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v3    # "progress":I
    .end local v4    # "title":Ljava/lang/String;
    :cond_0
    const v5, 0x7f0a000a

    goto :goto_0

    .line 975
    .restart local v1    # "dialog":Landroid/app/Dialog;
    :cond_1
    const v5, 0x7f090025

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/oneplus/gallery2/OPGallery$9;->val$mediaSetToDelete:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "title":Ljava/lang/String;
    goto :goto_1

    .line 986
    .restart local v3    # "progress":I
    :cond_2
    iget-object v5, p0, Lcom/oneplus/gallery2/OPGallery$9;->val$progressBarRef:Lcom/oneplus/base/Ref;

    invoke-interface {v5}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2
.end method
