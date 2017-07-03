.class public abstract Lcom/oneplus/gallery/GalleryFragment;
.super Lcom/oneplus/base/BaseFragment;
.source "GalleryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/GalleryFragment$2;
    }
.end annotation


# static fields
.field public static final ACTION_ID_BACK:Ljava/lang/String; = "GalleryFragment.Action.Back"

.field public static final EVENT_ACTION_ITEM_CLICKED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery/ActionItemEventArgs;",
            ">;"
        }
    .end annotation
.end field

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

.field private m_Gallery:Lcom/oneplus/gallery/Gallery;

.field private m_GalleryActivity:Lcom/oneplus/gallery/GalleryActivity;

.field private m_IsInitialUIStateNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    .line 30
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "HasActionBar"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/GalleryFragment;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/GalleryFragment;->PROP_HAS_ACTION_BAR:Lcom/oneplus/base/PropertyKey;

    .line 34
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsBackActionNeeded"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/GalleryFragment;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/GalleryFragment;->PROP_IS_BACK_ACTION_NEEDED:Lcom/oneplus/base/PropertyKey;

    .line 39
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "ActionItemClicked"

    const-class v2, Lcom/oneplus/gallery/ActionItemEventArgs;

    const-class v3, Lcom/oneplus/gallery/GalleryFragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery/GalleryFragment;->EVENT_ACTION_ITEM_CLICKED:Lcom/oneplus/base/EventKey;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/oneplus/base/BaseFragment;-><init>()V

    .line 47
    new-instance v0, Lcom/oneplus/gallery/GalleryFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GalleryFragment$1;-><init>(Lcom/oneplus/gallery/GalleryFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GalleryFragment;->m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/GalleryFragment;->setRetainInstance(Z)V

    .line 81
    return-void
.end method


# virtual methods
.method public backToInitialUIState()V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryFragment;->verifyAccess()V

    .line 90
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryFragment;->m_GalleryActivity:Lcom/oneplus/gallery/GalleryActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery/GalleryFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/GalleryFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->NEW:Lcom/oneplus/base/BaseFragment$State;

    if-eq v0, v1, :cond_0

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/GalleryFragment;->m_IsInitialUIStateNeeded:Z

    .line 93
    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryFragment;->onBackToInitialUIState()V

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/GalleryFragment;->m_IsInitialUIStateNeeded:Z

    goto :goto_0
.end method

.method public final getGallery()Lcom/oneplus/gallery/Gallery;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryFragment;->m_Gallery:Lcom/oneplus/gallery/Gallery;

    return-object v0
.end method

.method public final getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryFragment;->m_GalleryActivity:Lcom/oneplus/gallery/GalleryActivity;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 133
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseFragment;->handleMessage(Landroid/os/Message;)V

    .line 136
    :goto_0
    return-void

    .line 128
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/GalleryFragment;->m_IsInitialUIStateNeeded:Z

    .line 129
    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryFragment;->onBackToInitialUIState()V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public final isAttachedToGallery()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryFragment;->m_Gallery:Lcom/oneplus/gallery/Gallery;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityPause()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method protected onActivityResume()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method protected onActivityStart()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method protected onActivityStop()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 185
    check-cast p1, Lcom/oneplus/gallery/GalleryActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/oneplus/gallery/GalleryFragment;->m_GalleryActivity:Lcom/oneplus/gallery/GalleryActivity;

    .line 186
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryFragment;->m_GalleryActivity:Lcom/oneplus/gallery/GalleryActivity;

    sget-object v1, Lcom/oneplus/gallery/GalleryActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/GalleryFragment;->m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GalleryActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 187
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryFragment;->m_Gallery:Lcom/oneplus/gallery/Gallery;

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach() - Attach to Gallery"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryFragment;->m_GalleryActivity:Lcom/oneplus/gallery/GalleryActivity;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/GalleryFragment;->m_Gallery:Lcom/oneplus/gallery/Gallery;

    .line 191
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryFragment;->m_Gallery:Lcom/oneplus/gallery/Gallery;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/GalleryFragment;->onAttachToGallery(Lcom/oneplus/gallery/Gallery;)V

    .line 195
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/gallery/GalleryFragment;->m_IsInitialUIStateNeeded:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/gallery/GalleryFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/GalleryFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->NEW:Lcom/oneplus/base/BaseFragment$State;

    if-eq v0, v1, :cond_1

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/GalleryFragment;->m_IsInitialUIStateNeeded:Z

    .line 198
    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryFragment;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, -0x2710

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 200
    :cond_1
    return-void
.end method

.method protected onAttachToGallery(Lcom/oneplus/gallery/Gallery;)V
    .locals 0
    .param p1, "gallery"    # Lcom/oneplus/gallery/Gallery;

    .prologue
    .line 208
    return-void
.end method

.method protected onBackToInitialUIState()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 226
    iget-boolean v0, p0, Lcom/oneplus/gallery/GalleryFragment;->m_IsInitialUIStateNeeded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryFragment;->m_GalleryActivity:Lcom/oneplus/gallery/GalleryActivity;

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/GalleryFragment;->m_IsInitialUIStateNeeded:Z

    .line 229
    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryFragment;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, -0x2710

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 231
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryFragment;->m_GalleryActivity:Lcom/oneplus/gallery/GalleryActivity;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryFragment;->m_GalleryActivity:Lcom/oneplus/gallery/GalleryActivity;

    sget-object v1, Lcom/oneplus/gallery/GalleryActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/GalleryFragment;->m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GalleryActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/GalleryFragment;->m_GalleryActivity:Lcom/oneplus/gallery/GalleryActivity;

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    invoke-super {p0}, Lcom/oneplus/base/BaseFragment;->onDetach()V

    .line 250
    return-void
.end method

.method protected setSystemUiVisibility(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 257
    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    .line 258
    .local v0, "gallery":Lcom/oneplus/gallery/Gallery;
    if-nez v0, :cond_0

    .line 260
    iget-object v1, p0, Lcom/oneplus/gallery/GalleryFragment;->TAG:Ljava/lang/String;

    const-string v2, "setSystemUiVisibility() - No gallery"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/GalleryFragment;->TAG:Ljava/lang/String;

    const-string v2, "setSystemUiVisibility() - Visible: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    if-eqz p1, :cond_1

    .line 269
    invoke-virtual {v0, v5}, Lcom/oneplus/gallery/Gallery;->setNavigationBarVisibility(Z)Lcom/oneplus/base/Handle;

    .line 270
    invoke-virtual {v0, v5}, Lcom/oneplus/gallery/Gallery;->setStatusBarVisibility(Z)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {v0, v4}, Lcom/oneplus/gallery/Gallery;->setNavigationBarVisibility(Z)Lcom/oneplus/base/Handle;

    .line 275
    invoke-virtual {v0, v4}, Lcom/oneplus/gallery/Gallery;->setStatusBarVisibility(Z)Lcom/oneplus/base/Handle;

    goto :goto_0
.end method
