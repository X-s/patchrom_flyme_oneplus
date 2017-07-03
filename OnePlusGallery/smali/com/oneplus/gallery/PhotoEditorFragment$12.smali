.class Lcom/oneplus/gallery/PhotoEditorFragment$12;
.super Lcom/oneplus/gallery/GalleryDialogFragment;
.source "PhotoEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/PhotoEditorFragment;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

.field final synthetic val$activity:Lcom/oneplus/gallery/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/PhotoEditorFragment;Lcom/oneplus/gallery/GalleryActivity;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/oneplus/gallery/PhotoEditorFragment$12;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    iput-object p2, p0, Lcom/oneplus/gallery/PhotoEditorFragment$12;->val$activity:Lcom/oneplus/gallery/GalleryActivity;

    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f09000b

    .line 555
    iget-object v4, p0, Lcom/oneplus/gallery/PhotoEditorFragment$12;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    # invokes: Lcom/oneplus/gallery/PhotoEditorFragment;->getSaveTitleRes()I
    invoke-static {v4}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$1200(Lcom/oneplus/gallery/PhotoEditorFragment;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/oneplus/gallery/PhotoEditorFragment$12;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 556
    .local v3, "positiveTitle":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/oneplus/gallery/PhotoEditorFragment$12;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "abandonStr":Ljava/lang/String;
    const v4, 0x7f090087

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/gallery/PhotoEditorFragment$12;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/gallery/PhotoEditorFragment$12;->val$activity:Lcom/oneplus/gallery/GalleryActivity;

    sget-object v5, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 559
    .local v1, "isDarkMode":Z
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment$12;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v1, :cond_0

    const v4, 0x7f0a000d

    :goto_0
    invoke-direct {v5, v6, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f090088

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/oneplus/gallery/PhotoEditorFragment$12$2;

    invoke-direct {v5, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$12$2;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment$12;)V

    invoke-virtual {v4, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/oneplus/gallery/PhotoEditorFragment$12$1;

    invoke-direct {v5, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$12$1;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment$12;)V

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :cond_0
    const v4, 0x7f0a000b

    goto :goto_0
.end method
