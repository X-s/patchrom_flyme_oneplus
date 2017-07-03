.class public abstract Lcom/oneplus/gallery/GalleryDialogFragment;
.super Landroid/app/DialogFragment;
.source "GalleryDialogFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryDialogFragment"


# instance fields
.field private final m_ActivityStateCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_BaseActivity:Lcom/oneplus/base/BaseActivity;

.field private m_DialogHandle:Lcom/oneplus/base/Handle;

.field private m_DialogShowLater:Z

.field private m_FragmentTag:Ljava/lang/String;

.field private m_IsDismissDelayed:Z

.field private m_IsInstanceStateSaved:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 39
    new-instance v0, Lcom/oneplus/gallery/GalleryDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GalleryDialogFragment$1;-><init>(Lcom/oneplus/gallery/GalleryDialogFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_ActivityStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/GalleryDialogFragment;->setRetainInstance(Z)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/GalleryDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GalleryDialogFragment;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_DialogShowLater:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/GalleryDialogFragment;)Lcom/oneplus/base/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GalleryDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_BaseActivity:Lcom/oneplus/base/BaseActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/GalleryDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GalleryDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_FragmentTag:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_DialogShowLater:Z

    if-nez v0, :cond_0

    .line 77
    invoke-super {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_DialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_DialogHandle:Lcom/oneplus/base/Handle;

    .line 81
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_DialogShowLater:Z

    .line 82
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_BaseActivity:Lcom/oneplus/base/BaseActivity;

    sget-object v1, Lcom/oneplus/base/BaseActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_ActivityStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/BaseActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 83
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 3

    .prologue
    .line 90
    iget-boolean v1, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_IsInstanceStateSaved:Z

    if-eqz v1, :cond_0

    .line 92
    const-string v1, "GalleryDialogFragment"

    const-string v2, "dismissAllowingStateLoss() - Dismiss after saving instance state"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_IsDismissDelayed:Z

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_DialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_DialogHandle:Lcom/oneplus/base/Handle;

    .line 107
    return-void

    .line 99
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "GalleryDialogFragment"

    const-string v2, "dismissAllowingStateLoss() - Error when dismiss dialog fragment"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/GalleryActivity;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 115
    iget-boolean v0, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_IsDismissDelayed:Z

    if-eqz v0, :cond_1

    .line 117
    const-string v0, "GalleryDialogFragment"

    const-string v1, "onAttach() - Dismiss"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_IsDismissDelayed:Z

    .line 119
    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryDialogFragment;->dismiss()V

    .line 124
    .end local p1    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 122
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_DialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    check-cast p1, Lcom/oneplus/gallery/GalleryActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/oneplus/gallery/GalleryActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery/Gallery;->notifyShowDialog()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_DialogHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryDialogFragment;->dismissAllowingStateLoss()V

    .line 132
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 138
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 146
    iput-boolean v2, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_IsInstanceStateSaved:Z

    .line 147
    iget-boolean v0, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_IsDismissDelayed:Z

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "GalleryDialogFragment"

    const-string v1, "onResume() - Dismiss"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iput-boolean v2, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_IsDismissDelayed:Z

    .line 151
    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryDialogFragment;->dismiss()V

    .line 154
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_IsInstanceStateSaved:Z

    .line 163
    return-void
.end method

.method public show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 2
    .param p1, "transaction"    # Landroid/app/FragmentTransaction;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    const-string v0, "GalleryDialogFragment"

    const-string v1, "show(FragmentTransaction...) - this method is deprecated, use show(BaseActivity baseActivity...) instead"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v0, -0x1

    return v0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 172
    const-string v0, "GalleryDialogFragment"

    const-string v1, "show(FragmentManager...) - this method is deprecated, use show(BaseActivity baseActivity...) instead"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V
    .locals 2
    .param p1, "baseActivity"    # Lcom/oneplus/base/BaseActivity;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p2, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_FragmentTag:Ljava/lang/String;

    .line 192
    iput-object p1, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_BaseActivity:Lcom/oneplus/base/BaseActivity;

    .line 193
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/oneplus/base/BaseActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_DialogShowLater:Z

    .line 196
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/GalleryDialogFragment;->m_ActivityStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/base/BaseActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/base/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-super {p0, v0, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
