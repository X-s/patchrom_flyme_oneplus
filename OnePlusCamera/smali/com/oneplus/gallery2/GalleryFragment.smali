.class public abstract Lcom/oneplus/gallery2/GalleryFragment;
.super Lcom/oneplus/base/BaseFragment;
.source "GalleryFragment.java"


# static fields
.field public static final ACTION_ID_BACK:Ljava/lang/String; = "GalleryFragment.Action.Back"

.field private static final MSG_BACK_TO_INITIAL_UI_STATE:I = -0x2710

.field public static final PROP_HAS_ACTION_BAR:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_BACK_ACTION_NEEDED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;"
        }
    .end annotation
.end field

.field private m_Gallery:Lcom/oneplus/gallery2/Gallery;

.field private m_GalleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

.field private m_IsInitialUIStateNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    .line 29
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "HasActionBar"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/GalleryFragment;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/GalleryFragment;->PROP_HAS_ACTION_BAR:Lcom/oneplus/base/PropertyKey;

    .line 33
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsBackActionNeeded"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/GalleryFragment;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/GalleryFragment;->PROP_IS_BACK_ACTION_NEEDED:Lcom/oneplus/base/PropertyKey;

    .line 38
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/oneplus/base/BaseFragment;-><init>()V

    .line 42
    new-instance v0, Lcom/oneplus/gallery2/GalleryFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GalleryFragment$1;-><init>(Lcom/oneplus/gallery2/GalleryFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/GalleryFragment;->setRetainInstance(Z)V

    .line 76
    return-void
.end method


# virtual methods
.method public backToInitialUIState()V
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryFragment;->verifyAccess()V

    .line 85
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_GalleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    if-nez v0, :cond_1

    .line 92
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_IsInitialUIStateNeeded:Z

    .line 93
    :goto_0
    return-void

    .line 85
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/GalleryFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/GalleryFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->NEW:Lcom/oneplus/base/BaseFragment$State;

    if-eq v0, v1, :cond_0

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_IsInitialUIStateNeeded:Z

    .line 88
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 89
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onBackToInitialUIState()V

    goto :goto_0
.end method

.method public final getGallery()Lcom/oneplus/gallery2/Gallery;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    return-object v0
.end method

.method public final getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_GalleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 128
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseFragment;->handleMessage(Landroid/os/Message;)V

    .line 131
    :goto_0
    return-void

    .line 123
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_IsInitialUIStateNeeded:Z

    .line 124
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onBackToInitialUIState()V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public final isAttachedToGallery()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final notifyBackPressed()Z
    .locals 2

    .prologue
    .line 150
    sget-object v0, Lcom/oneplus/gallery2/GalleryFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/GalleryFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->RUNNING:Lcom/oneplus/base/BaseFragment$State;

    if-ne v0, v1, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onBackPressed()Z

    move-result v0

    return v0

    .line 151
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityPause()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method protected onActivityResume()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method protected onActivityStart()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method protected onActivityStop()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 190
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 193
    check-cast p1, Lcom/oneplus/gallery2/GalleryActivity;

    iput-object p1, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_GalleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    .line 194
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_GalleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GalleryActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 195
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    if-eqz v0, :cond_1

    .line 203
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_IsInitialUIStateNeeded:Z

    if-nez v0, :cond_2

    .line 208
    :cond_0
    :goto_1
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAttach() - Attach to Gallery"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_GalleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GalleryActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    .line 199
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/GalleryFragment;->onAttachToGallery(Lcom/oneplus/gallery2/Gallery;)V

    goto :goto_0

    .line 203
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/GalleryFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/GalleryFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->NEW:Lcom/oneplus/base/BaseFragment$State;

    if-eq v0, v1, :cond_0

    .line 205
    iput-boolean v3, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_IsInitialUIStateNeeded:Z

    .line 206
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryFragment;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, -0x2710

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method protected onAttachToGallery(Lcom/oneplus/gallery2/Gallery;)V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method protected onBackPressed()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method protected onBackToInitialUIState()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 240
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 243
    iget-boolean v0, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_IsInitialUIStateNeeded:Z

    if-nez v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_GalleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    if-eqz v0, :cond_0

    .line 245
    iput-boolean v1, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_IsInitialUIStateNeeded:Z

    .line 246
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryFragment;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, -0x2710

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onDetach()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 256
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_GalleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    if-nez v0, :cond_0

    .line 263
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 266
    invoke-super {p0}, Lcom/oneplus/base/BaseFragment;->onDetach()V

    .line 267
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_GalleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GalleryActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 259
    iput-object v3, p0, Lcom/oneplus/gallery2/GalleryFragment;->m_GalleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    goto :goto_0
.end method

.method protected setSystemUiVisibility(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 274
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_0

    .line 281
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setSystemUiVisibility() - Visible: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    if-nez p1, :cond_1

    .line 291
    invoke-virtual {v0, v4}, Lcom/oneplus/gallery2/Gallery;->setNavigationBarVisibility(Z)Lcom/oneplus/base/Handle;

    .line 292
    invoke-virtual {v0, v4}, Lcom/oneplus/gallery2/Gallery;->setStatusBarVisibility(Z)Lcom/oneplus/base/Handle;

    .line 294
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSystemUiVisibility() - No gallery"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void

    .line 286
    :cond_1
    invoke-virtual {v0, v5}, Lcom/oneplus/gallery2/Gallery;->setNavigationBarVisibility(Z)Lcom/oneplus/base/Handle;

    .line 287
    invoke-virtual {v0, v5}, Lcom/oneplus/gallery2/Gallery;->setStatusBarVisibility(Z)Lcom/oneplus/base/Handle;

    goto :goto_0
.end method
