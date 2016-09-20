.class final Lcom/oneplus/camera/ui/OptionsPanelImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "OptionsPanelImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/OptionsPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/OptionsPanelImpl$13;,
        Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    }
.end annotation


# instance fields
.field private m_OptionsPanel:Landroid/view/View;

.field private m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

.field private final m_SceneItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;",
            ">;"
        }
    .end annotation
.end field

.field private m_SceneItemsContainer:Landroid/view/ViewGroup;

.field private m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

.field private final m_VideoResolutionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;",
            ">;"
        }
    .end annotation
.end field

.field private m_VideoResolutionItemsContainer:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 82
    const-string v0, "Options Panel"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->onItemClicked(Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/OptionsPanelImpl;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateItemsContainerVisibility()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/media/Resolution;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->onVideoResolutionChanged(Lcom/oneplus/camera/media/Resolution;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/camera/ui/OptionsPanelImpl;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->onVideoResolutionListChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/ui/MotionEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/MotionEventArgs;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->onTouch(Lcom/oneplus/camera/ui/MotionEventArgs;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->onSceneChanged(Lcom/oneplus/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->onSceneAdded(Lcom/oneplus/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->onSceneRemoved(Lcom/oneplus/camera/scene/Scene;)V

    return-void
.end method

.method private checkItemCount()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "hasItems":Z
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 91
    const/4 v0, 0x1

    .line 94
    :cond_0
    :goto_0
    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PROP_HAS_ITEMS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 95
    if-nez v0, :cond_1

    .line 96
    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PROP_IS_DEFAULT_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 97
    :cond_1
    return-void

    .line 92
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 93
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createResolutionItem(Lcom/oneplus/camera/media/Resolution;)Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    .locals 6
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 115
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    new-instance v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    invoke-direct {v2, p0, v0, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Object;)V

    .line 118
    .local v2, "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    const/4 v1, 0x0

    .line 119
    .local v1, "iconResId":I
    const/4 v3, 0x0

    .line 120
    .local v3, "titleResId":I
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->is4kVideo()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    const v1, 0x7f020088

    .line 123
    const v3, 0x7f090024

    .line 135
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 136
    iget-object v4, v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    :cond_1
    if-eqz v3, :cond_4

    .line 138
    iget-object v4, v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 143
    :goto_1
    return-object v2

    .line 125
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->is1080pVideo()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 127
    const v1, 0x7f020087

    .line 128
    const v3, 0x7f090023

    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->is720pVideo()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    const v1, 0x7f020089

    .line 133
    const v3, 0x7f090025

    goto :goto_0

    .line 140
    :cond_4
    iget-object v4, v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->getMegaPixelsDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private onItemClicked(Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;)V
    .locals 6
    .param p1, "item"    # Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 339
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v1, p1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->object:Ljava/lang/Object;

    .line 344
    .local v1, "obj":Ljava/lang/Object;
    instance-of v3, v1, Lcom/oneplus/camera/scene/Scene;

    if-eqz v3, :cond_4

    move-object v2, v1

    .line 346
    check-cast v2, Lcom/oneplus/camera/scene/Scene;

    .line 347
    .local v2, "scene":Lcom/oneplus/camera/scene/Scene;
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v3, :cond_3

    .line 349
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v4, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_2

    .line 350
    sget-object v2, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    .line 351
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/oneplus/camera/scene/SceneManager;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 352
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemClicked() - Fail to change scene to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v4, "onItemClicked() - No SceneManager"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 360
    .end local v2    # "scene":Lcom/oneplus/camera/scene/Scene;
    :cond_4
    instance-of v3, v1, Lcom/oneplus/camera/media/Resolution;

    if-eqz v3, :cond_0

    .line 362
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-eqz v3, :cond_0

    .line 363
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v4, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    check-cast v1, Lcom/oneplus/camera/media/Resolution;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-interface {v3, v4, v1}, Lcom/oneplus/camera/media/ResolutionManager;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onSceneAdded(Lcom/oneplus/camera/scene/Scene;)V
    .locals 4
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 373
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v3, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 374
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 378
    :cond_0
    new-instance v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Object;)V

    .line 381
    .local v1, "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    iget-object v2, v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->iconImageView:Landroid/widget/ImageView;

    sget-object v3, Lcom/oneplus/camera/scene/Scene$ImageUsage;->OPTIONS_PANEL_ICON:Lcom/oneplus/camera/scene/Scene$ImageUsage;

    invoke-interface {p1, v3}, Lcom/oneplus/camera/scene/Scene;->getImage(Lcom/oneplus/camera/scene/Scene$ImageUsage;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    iget-object v2, v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->titleTextView:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/oneplus/camera/scene/Scene;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v3, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateItem(Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;Z)V

    .line 390
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 391
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneItemsContainer:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 392
    iget-object v2, v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->addAutoRotateView(Landroid/view/View;)V

    .line 395
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->checkItemCount()V

    goto :goto_0

    .line 387
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private onSceneChanged(Lcom/oneplus/camera/scene/Scene;)V
    .locals 6
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 402
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 404
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    .line 405
    .local v1, "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    iget-object v2, v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->object:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    move v2, v3

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateItem(Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;Z)V

    .line 402
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v2, v4

    .line 405
    goto :goto_1

    .line 407
    .end local v1    # "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    :cond_1
    sget-object v2, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PROP_IS_DEFAULT_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v5, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    if-ne p1, v5, :cond_2

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 408
    return-void

    :cond_2
    move v3, v4

    .line 407
    goto :goto_2
.end method

.method private onSceneRemoved(Lcom/oneplus/camera/scene/Scene;)V
    .locals 4
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 414
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 416
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    .line 417
    .local v1, "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    iget-object v2, v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->object:Ljava/lang/Object;

    if-ne v2, p1, :cond_1

    .line 420
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 421
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneItemsContainer:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 422
    iget-object v2, v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->removeAutoRotateView(Landroid/view/View;)V

    .line 425
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->checkItemCount()V

    .line 429
    .end local v1    # "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    :cond_0
    return-void

    .line 414
    .restart local v1    # "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private onTouch(Lcom/oneplus/camera/ui/MotionEventArgs;)V
    .locals 1
    .param p1, "e"    # Lcom/oneplus/camera/ui/MotionEventArgs;

    .prologue
    .line 329
    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanel;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->closeOptionsPanel(I)V

    .line 331
    :cond_0
    return-void
.end method

.method private onVideoResolutionChanged(Lcom/oneplus/camera/media/Resolution;)V
    .locals 3
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    .line 435
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 437
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    .line 438
    .local v1, "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    iget-object v2, v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateItem(Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;Z)V

    .line 435
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 440
    .end local v1    # "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    :cond_0
    return-void
.end method

.method private onVideoResolutionListChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, "resolutions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    iget-object v5, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 449
    iget-object v5, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    .line 450
    .local v3, "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    iget-object v5, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResolutionItemsContainer:Landroid/view/ViewGroup;

    iget-object v6, v3, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 451
    iget-object v5, v3, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->removeAutoRotateView(Landroid/view/View;)V

    .line 447
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 453
    .end local v3    # "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    :cond_0
    iget-object v5, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 456
    iget-object v5, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v6, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/media/Resolution;

    .line 457
    .local v4, "resolution":Lcom/oneplus/camera/media/Resolution;
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 459
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/media/Resolution;

    invoke-direct {p0, v5}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->createResolutionItem(Lcom/oneplus/camera/media/Resolution;)Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    move-result-object v3

    .line 460
    .restart local v3    # "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    iget-object v5, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 461
    .local v2, "index":I
    iget-object v5, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v5, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResolutionItemsContainer:Landroid/view/ViewGroup;

    iget-object v6, v3, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    invoke-virtual {v5, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 463
    iget-object v5, v3, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->object:Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-direct {p0, v3, v5}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateItem(Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;Z)V

    .line 464
    iget-object v5, v3, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->addAutoRotateView(Landroid/view/View;)V

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 468
    .end local v2    # "index":I
    .end local v3    # "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->checkItemCount()V

    .line 469
    return-void
.end method

.method private updateItem(Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;Z)V
    .locals 3
    .param p1, "item"    # Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;
    .param p2, "isSelected"    # Z

    .prologue
    .line 512
    if-eqz p2, :cond_0

    .line 514
    iget-object v0, p1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->iconImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 515
    iget-object v0, p1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0a000e

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 522
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->iconImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 520
    iget-object v0, p1, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0a000d

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private updateItemsContainerVisibility()V
    .locals 3

    .prologue
    .line 501
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResolutionItemsContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 503
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResolutionItemsContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 504
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->checkItemCount()V

    .line 506
    :cond_0
    return-void

    .line 503
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public closeOptionsPanel(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->verifyAccess()V

    .line 105
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 106
    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method protected onInitialize()V
    .locals 9

    .prologue
    .line 153
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 156
    const-class v6, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 157
    .local v1, "captureModeManager":Lcom/oneplus/camera/capturemode/CaptureModeManager;
    const-class v6, Lcom/oneplus/camera/media/ResolutionManager;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/media/ResolutionManager;

    iput-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    .line 158
    const-class v6, Lcom/oneplus/camera/scene/SceneManager;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/scene/SceneManager;

    iput-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    .line 161
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    move-object v6, v0

    .line 162
    check-cast v6, Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v6}, Lcom/oneplus/camera/OPCameraActivity;->getCaptureUIContainer()Landroid/view/ViewGroup;

    move-result-object v6

    const v7, 0x7f0b0054

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    .line 163
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    const v7, 0x7f0b0057

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneItemsContainer:Landroid/view/ViewGroup;

    .line 164
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    const v7, 0x7f0b0056

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_VideoResolutionItemsContainer:Landroid/view/ViewGroup;

    .line 165
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->addNavBarAlignedView(Landroid/view/View;)V

    .line 168
    new-instance v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$1;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    .line 176
    .local v2, "closePanelCallback":Lcom/oneplus/base/PropertyChangedCallback;
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v6, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 177
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    new-instance v7, Lcom/oneplus/camera/ui/OptionsPanelImpl$2;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$2;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 186
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    new-instance v7, Lcom/oneplus/camera/ui/OptionsPanelImpl$3;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$3;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 194
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v7, Lcom/oneplus/camera/ui/OptionsPanelImpl$4;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$4;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 210
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v7, Lcom/oneplus/camera/ui/OptionsPanelImpl$5;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$5;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 226
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v6, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 227
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-eqz v6, :cond_2

    .line 229
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v7, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    new-instance v8, Lcom/oneplus/camera/ui/OptionsPanelImpl$6;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$6;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v6, v7, v8}, Lcom/oneplus/camera/media/ResolutionManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 237
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v7, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    new-instance v8, Lcom/oneplus/camera/ui/OptionsPanelImpl$7;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$7;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v6, v7, v8}, Lcom/oneplus/camera/media/ResolutionManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 250
    :goto_0
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->EVENT_TOUCH:Lcom/oneplus/base/EventKey;

    new-instance v7, Lcom/oneplus/camera/ui/OptionsPanelImpl$8;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$8;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v6, v7}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 259
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v6, :cond_3

    .line 261
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v7, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    new-instance v8, Lcom/oneplus/camera/ui/OptionsPanelImpl$9;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$9;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v6, v7, v8}, Lcom/oneplus/camera/scene/SceneManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 272
    :goto_1
    if-eqz v1, :cond_0

    .line 274
    sget-object v6, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v7, Lcom/oneplus/camera/ui/OptionsPanelImpl$10;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$10;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v1, v6, v7}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 285
    :cond_0
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v6, :cond_1

    .line 287
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v7, Lcom/oneplus/camera/scene/SceneManager;->EVENT_SCENE_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v8, Lcom/oneplus/camera/ui/OptionsPanelImpl$11;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$11;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v6, v7, v8}, Lcom/oneplus/camera/scene/SceneManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 295
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v7, Lcom/oneplus/camera/scene/SceneManager;->EVENT_SCENE_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v8, Lcom/oneplus/camera/ui/OptionsPanelImpl$12;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl$12;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v6, v7, v8}, Lcom/oneplus/camera/scene/SceneManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 306
    :cond_1
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v7, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v6, v7}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object v5, v6

    .line 307
    .local v5, "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    :goto_2
    if-eqz v5, :cond_5

    .line 309
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "count":I
    :goto_3
    if-ge v4, v3, :cond_5

    .line 310
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/scene/Scene;

    invoke-direct {p0, v6}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->onSceneAdded(Lcom/oneplus/camera/scene/Scene;)V

    .line 309
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 247
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    :cond_2
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v7, "onInitialize() - No ResolutionManager"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_3
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v7, "onInitialize() - No SceneManager"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 306
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 314
    .restart local v5    # "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    :cond_5
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v6, :cond_6

    .line 315
    sget-object v7, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PROP_IS_DEFAULT_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v8, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v6, v8}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    if-ne v6, v8, :cond_8

    const/4 v6, 0x1

    :goto_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 318
    :cond_6
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-eqz v6, :cond_7

    .line 319
    iget-object v6, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v7, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v6, v7}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->onVideoResolutionListChanged(Ljava/util/List;)V

    .line 322
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateItemsContainerVisibility()V

    .line 323
    return-void

    .line 315
    :cond_8
    const/4 v6, 0x0

    goto :goto_4
.end method

.method public openOptionsPanel(I)Z
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 477
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->verifyAccess()V

    .line 478
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->isRunningOrInitializing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 480
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v2, "openOptionsPanel() - Component is not running"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :goto_0
    return v0

    .line 483
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    if-nez v2, :cond_1

    .line 485
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v2, "openOptionsPanel() - No options panel layout"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 491
    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move v0, v1

    .line 494
    goto :goto_0
.end method
