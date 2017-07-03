.class public Lcom/oneplus/gallery/MediaPickerActivity;
.super Lcom/oneplus/gallery/GalleryActivity;
.source "MediaPickerActivity.java"


# static fields
.field private static final DURATION_GRIDVIEW_ENTER_ANIMATION:J = 0x12cL

.field private static final DURATION_GRIDVIEW_ENTER_DELAY:J = 0xc8L

.field private static final DURATION_GRIDVIEW_EXIT_ANIMATION:J = 0x12cL

.field private static final FRAGMENT_TAG_GRID_VIEW:Ljava/lang/String; = "GalleryActivity.GridView"

.field private static final FRAGMENT_TAG_MEDIA_SET_PICKER:Ljava/lang/String; = "GalleryActivity.MediaSetPicker"

.field private static final INTERPOLATOR_GRIDVIEW_ANIMATION:Landroid/animation/TimeInterpolator;

.field private static m_MediaManagerActivateHandle:Lcom/oneplus/base/Handle;


# instance fields
.field private m_ActivityBackgroundContainer:Landroid/widget/RelativeLayout;

.field private m_ContentView:Landroid/view/ViewGroup;

.field private final m_GridViewClosedRunnable:Ljava/lang/Runnable;

.field private m_GridViewContainer:Landroid/view/View;

.field private m_GridViewEnterPositionY:I

.field private m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

.field private final m_GridViewOpenedRunnable:Ljava/lang/Runnable;

.field private final m_GridviewConfirmClickedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_GridviewMediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsGridViewFragmentAdded:Z

.field m_IsMultipleSelect:Z

.field private m_MediaList:Lcom/oneplus/gallery/media/MediaList;

.field private m_MediaManager:Lcom/oneplus/gallery/media/MediaManager;

.field private final m_MediaSetClickedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery/ListItemEventArgs",
            "<",
            "Lcom/oneplus/gallery/media/MediaSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

.field private m_MediaSetPickerFragment:Lcom/oneplus/gallery/MediaSetPickerFragment;

.field private m_PageContainer:Landroid/widget/RelativeLayout;

.field private m_StatusBarBackground:Landroid/view/View;

.field private m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

.field private m_Titlebar:Landroid/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 52
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/gallery/MediaPickerActivity;->INTERPOLATOR_GRIDVIEW_ANIMATION:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryActivity;-><init>()V

    .line 74
    new-instance v0, Lcom/oneplus/gallery/MediaPickerActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaPickerActivity$1;-><init>(Lcom/oneplus/gallery/MediaPickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridviewMediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 82
    new-instance v0, Lcom/oneplus/gallery/MediaPickerActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaPickerActivity$2;-><init>(Lcom/oneplus/gallery/MediaPickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetClickedHandler:Lcom/oneplus/base/EventHandler;

    .line 90
    new-instance v0, Lcom/oneplus/gallery/MediaPickerActivity$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaPickerActivity$3;-><init>(Lcom/oneplus/gallery/MediaPickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridviewConfirmClickedHandler:Lcom/oneplus/base/EventHandler;

    .line 98
    new-instance v0, Lcom/oneplus/gallery/MediaPickerActivity$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaPickerActivity$4;-><init>(Lcom/oneplus/gallery/MediaPickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewClosedRunnable:Ljava/lang/Runnable;

    .line 106
    new-instance v0, Lcom/oneplus/gallery/MediaPickerActivity$5;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaPickerActivity$5;-><init>(Lcom/oneplus/gallery/MediaPickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewOpenedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/MediaPickerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaPickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaPickerActivity;->onGridViewSelectedMediaCountChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/MediaPickerActivity;Lcom/oneplus/gallery/ListItemEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaPickerActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery/ListItemEventArgs;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaPickerActivity;->onMediaSetClicked(Lcom/oneplus/gallery/ListItemEventArgs;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/MediaPickerActivity;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaPickerActivity;
    .param p1, "x1"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaPickerActivity;->onGridViewConfirmClicked(Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/MediaPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaPickerActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->onGridViewClosed()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/gallery/MediaPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaPickerActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->onGridViewOpened()V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/gallery/MediaPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaPickerActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->onFinished()V

    return-void
.end method

.method private attachGridViewFragment()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 118
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-nez v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->TAG:Ljava/lang/String;

    const-string v1, "attachGridViewFragment() - No fragment"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_IsGridViewFragmentAdded:Z

    if-nez v1, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f06000d

    iget-object v3, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    const-string v4, "GalleryActivity.GridView"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 126
    iput-boolean v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_IsGridViewFragmentAdded:Z

    goto :goto_0

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery/GridViewFragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 130
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery/GridViewFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method private closeGridView(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 141
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_PageContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_PageContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 149
    :cond_2
    if-eqz p1, :cond_3

    .line 151
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    const-string v1, "gallery_activity_background"

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/MediaPickerActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 152
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewEnterPositionY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/MediaPickerActivity;->INTERPOLATOR_GRIDVIEW_ANIMATION:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewClosedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 161
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->onGridViewClosed()V

    goto :goto_0
.end method

.method private detachGridViewFragment()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    sget-object v0, Lcom/oneplus/gallery/MediaPickerActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/MediaPickerActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    if-eq v0, v1, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->TAG:Ljava/lang/String;

    const-string v1, "detachGridViewFragment() - Activity has been destroyed, no need to detach fragment"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSelectedUriList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v3, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-nez v3, :cond_1

    .line 183
    const/4 v2, 0x0

    .line 191
    :cond_0
    return-object v2

    .line 185
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v2, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v3, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v3}, Lcom/oneplus/gallery/GridViewFragment;->getSelectedMedia()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/Media;

    .line 188
    .local v1, "media":Lcom/oneplus/gallery/media/Media;
    invoke-interface {v1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onFinished()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 257
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->getSelectedUriList()Ljava/util/ArrayList;

    move-result-object v4

    .line 260
    .local v4, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 262
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 263
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 274
    :goto_0
    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 275
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v2}, Lcom/oneplus/gallery/MediaPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 276
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->finish()V

    .line 277
    return-void

    .line 266
    :cond_0
    new-array v3, v9, [Ljava/lang/String;

    const-string v5, "image/*"

    aput-object v5, v3, v8

    .line 267
    .local v3, "mimeType":[Ljava/lang/String;
    new-instance v0, Landroid/content/ClipData;

    const/4 v6, 0x0

    new-instance v7, Landroid/content/ClipData$Item;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-direct {v7, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v0, v6, v3, v7}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 268
    .local v0, "clipData":Landroid/content/ClipData;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 270
    new-instance v6, Landroid/content/ClipData$Item;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-direct {v6, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v6}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 272
    :cond_1
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    goto :goto_0
.end method

.method private onGridViewClosed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 307
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewFragment;->backToInitialUIState()V

    .line 309
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 310
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 312
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->detachGridViewFragment()V

    .line 313
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaList;->release()V

    .line 317
    iput-object v3, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 320
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->updateTitleBar()V

    .line 321
    return-void
.end method

.method private onGridViewConfirmClicked(Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "args"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->onFinished()V

    .line 282
    return-void
.end method

.method private onGridViewOpened()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_PageContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_PageContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 336
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->updateTitleBar()V

    .line 337
    return-void
.end method

.method private onGridViewSelectedMediaCountChanged(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGridViewSelectedMediaCountChanged() - count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-boolean v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_IsMultipleSelect:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->onFinished()V

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->updateTitleBar()V

    goto :goto_0
.end method

.method private onMediaSetClicked(Lcom/oneplus/gallery/ListItemEventArgs;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/ListItemEventArgs",
            "<",
            "Lcom/oneplus/gallery/media/MediaSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "e":Lcom/oneplus/gallery/ListItemEventArgs;, "Lcom/oneplus/gallery/ListItemEventArgs<Lcom/oneplus/gallery/media/MediaSet;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 409
    invoke-virtual {p1}, Lcom/oneplus/gallery/ListItemEventArgs;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaSet;

    .line 411
    .local v0, "set":Lcom/oneplus/gallery/media/MediaSet;
    sget-object v1, Lcom/oneplus/gallery/media/MediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->TAG:Ljava/lang/String;

    const-string v2, "onMediaSetClicked() - mediaSet is released"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMediaSetClicked() - set : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    sget-object v1, Lcom/oneplus/gallery/media/MediaComparator;->TAKEN_TIME:Lcom/oneplus/gallery/media/MediaComparator;

    const/4 v4, -0x1

    invoke-interface {v0, v1, v4, v3}, Lcom/oneplus/gallery/media/MediaSet;->openMediaList(Lcom/oneplus/gallery/media/MediaComparator;II)Lcom/oneplus/gallery/media/MediaList;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 434
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->attachGridViewFragment()Z

    move-result v1

    if-nez v1, :cond_1

    .line 436
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->TAG:Ljava/lang/String;

    const-string v2, "onMediaSetClicked() - Fail to attach fragment"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v4, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 440
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v4, Lcom/oneplus/gallery/GridViewFragment;->PROP_HAS_ACTION_BAR:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 441
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v4, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v5, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-virtual {v1, v4, v5}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 442
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v4, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v4, v0}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 443
    iget-object v4, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v5, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_LONG_CLICK_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    iget-boolean v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_IsMultipleSelect:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 444
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v3, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 445
    iget-object v3, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v4, Lcom/oneplus/gallery/GridViewFragment;->PROP_SELECTION_STYLE:Lcom/oneplus/base/PropertyKey;

    iget-boolean v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_IsMultipleSelect:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;->PICKER_MULTIPLE_CHOICE:Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    :goto_2
    invoke-virtual {v3, v4, v1}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 447
    invoke-direct {p0, v2}, Lcom/oneplus/gallery/MediaPickerActivity;->openGridView(Z)Z

    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 443
    goto :goto_1

    .line 445
    :cond_3
    sget-object v1, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;->PICKER_SINGLE_CHOICE:Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    goto :goto_2
.end method

.method private openGridView(Z)Z
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 360
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-nez v1, :cond_1

    .line 400
    :cond_0
    :goto_0
    return v0

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    if-nez v1, :cond_2

    .line 366
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/MediaPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    .line 367
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 372
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->attachGridViewFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 378
    if-eqz p1, :cond_3

    .line 380
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    const-string v1, "gallery_activity_background"

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/MediaPickerActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 381
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 382
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    iget v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewEnterPositionY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 383
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/MediaPickerActivity;->INTERPOLATOR_GRIDVIEW_ANIMATION:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewOpenedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 400
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 395
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 396
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->onGridViewOpened()V

    goto :goto_1
.end method

.method private releaseMediaSetList()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    if-nez v0, :cond_0

    .line 488
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaSetList;->release()V

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    .line 487
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaManagerActivateHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method private setupMediaSetList()V
    .locals 3

    .prologue
    .line 493
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->TAG:Ljava/lang/String;

    const-string v1, "setupMediaSetList() - start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    if-eqz v0, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 501
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaManager:Lcom/oneplus/gallery/media/MediaManager;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaManager;->activate()Lcom/oneplus/base/Handle;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaManager:Lcom/oneplus/gallery/media/MediaManager;

    sget-object v1, Lcom/oneplus/gallery/media/MediaType;->PHOTO:Lcom/oneplus/gallery/media/MediaType;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaManager;->createMediaSetList(Lcom/oneplus/gallery/media/MediaType;I)Lcom/oneplus/gallery/media/MediaSetList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    .line 506
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupMediaSetList() - m_MediaSetList.size() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaSetList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetPickerFragment:Lcom/oneplus/gallery/MediaSetPickerFragment;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetPickerFragment:Lcom/oneplus/gallery/MediaSetPickerFragment;

    sget-object v1, Lcom/oneplus/gallery/MediaSetPickerFragment;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/MediaSetPickerFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setupUI()V
    .locals 10

    .prologue
    const v9, 0x7f060014

    .line 522
    iget-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->TAG:Ljava/lang/String;

    const-string v7, "setupUI() - start"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 526
    .local v4, "res":Landroid/content/res/Resources;
    const v6, 0x7f05008b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewEnterPositionY:I

    .line 529
    const v6, 0x7f030001

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_ContentView:Landroid/view/ViewGroup;

    .line 530
    iget-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_ContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery/MediaPickerActivity;->setContentView(Landroid/view/View;)V

    .line 533
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const-string v7, "gallery_activity_background"

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery/MediaPickerActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 536
    sget-object v6, Lcom/oneplus/gallery/MediaPickerActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery/MediaPickerActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/ScreenSize;

    .line 537
    .local v5, "screenSize":Lcom/oneplus/base/ScreenSize;
    const v6, 0x7f060001

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery/MediaPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_StatusBarBackground:Landroid/view/View;

    .line 538
    iget-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_StatusBarBackground:Landroid/view/View;

    const-string v7, "entry_page_tab_background"

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery/MediaPickerActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 539
    iget-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_StatusBarBackground:Landroid/view/View;

    invoke-virtual {v5}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v7

    invoke-static {v6, v7}, Lcom/oneplus/widget/ViewUtils;->setHeight(Landroid/view/View;I)V

    .line 540
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v6

    const-string v7, "status_bar"

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery/MediaPickerActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/oneplus/gallery/Gallery;->setStatusBarColor(I)Lcom/oneplus/base/Handle;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 543
    const v6, 0x7f060013

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery/MediaPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_ActivityBackgroundContainer:Landroid/widget/RelativeLayout;

    .line 544
    iget-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_ActivityBackgroundContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_PageContainer:Landroid/widget/RelativeLayout;

    .line 545
    iget-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_ActivityBackgroundContainer:Landroid/widget/RelativeLayout;

    const v7, 0x7f06000c

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    .line 546
    iget-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_ActivityBackgroundContainer:Landroid/widget/RelativeLayout;

    const v7, 0x7f060005

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Toolbar;

    iput-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    .line 549
    sget-object v6, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery/MediaPickerActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 550
    .local v2, "isBlackMode":Z
    iget-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    const-string v7, "action_bar_background"

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery/MediaPickerActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Toolbar;->setBackgroundColor(I)V

    .line 551
    iget-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    const v7, 0x7f0a0023

    invoke-virtual {v6, p0, v7}, Landroid/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 552
    iget-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    const-string v7, "tool_bar_text"

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery/MediaPickerActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    .line 553
    iget-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    const v7, 0x7f0b0006

    invoke-virtual {v6, v7}, Landroid/widget/Toolbar;->inflateMenu(I)V

    .line 554
    iget-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    invoke-virtual {v6}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v6

    const v7, 0x7f0600a5

    invoke-interface {v6, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-eqz v2, :cond_1

    const v6, 0x7f0200ad

    :goto_0
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 555
    iget-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    new-instance v7, Lcom/oneplus/gallery/MediaPickerActivity$6;

    invoke-direct {v7, p0}, Lcom/oneplus/gallery/MediaPickerActivity$6;-><init>(Lcom/oneplus/gallery/MediaPickerActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 570
    iget-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    new-instance v7, Lcom/oneplus/gallery/MediaPickerActivity$7;

    invoke-direct {v7, p0}, Lcom/oneplus/gallery/MediaPickerActivity$7;-><init>(Lcom/oneplus/gallery/MediaPickerActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->updateTitleBar()V

    .line 581
    iget-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_ActivityBackgroundContainer:Landroid/widget/RelativeLayout;

    const-string v7, "media_picker_list_item_background"

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery/MediaPickerActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 584
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v6

    sget-object v7, Lcom/oneplus/gallery/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v6, v7}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v6

    sget-object v8, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v6, v8}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct {p0, v7, v6}, Lcom/oneplus/gallery/MediaPickerActivity;->updateUIMargins(ZZ)V

    .line 587
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 588
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    const-string v6, "GalleryActivity.MediaSetPicker"

    invoke-virtual {v0, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery/MediaSetPickerFragment;

    iput-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetPickerFragment:Lcom/oneplus/gallery/MediaSetPickerFragment;

    .line 589
    const-string v6, "GalleryActivity.GridView"

    invoke-virtual {v0, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery/GridViewFragment;

    iput-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    .line 591
    iget-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-nez v6, :cond_2

    .line 593
    new-instance v6, Lcom/oneplus/gallery/GridViewFragment;

    invoke-direct {v6}, Lcom/oneplus/gallery/GridViewFragment;-><init>()V

    iput-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    .line 594
    iget-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v7, Lcom/oneplus/gallery/GridViewFragment;->PROP_SELECTION_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v8, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridviewMediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/gallery/GridViewFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 600
    :goto_1
    const/4 v3, 0x0

    .line 601
    .local v3, "isNewFragment":Z
    iget-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetPickerFragment:Lcom/oneplus/gallery/MediaSetPickerFragment;

    if-nez v6, :cond_0

    .line 603
    new-instance v6, Lcom/oneplus/gallery/MediaSetPickerFragment;

    invoke-direct {v6}, Lcom/oneplus/gallery/MediaSetPickerFragment;-><init>()V

    iput-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetPickerFragment:Lcom/oneplus/gallery/MediaSetPickerFragment;

    .line 604
    const/4 v3, 0x1

    .line 606
    :cond_0
    iget-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetPickerFragment:Lcom/oneplus/gallery/MediaSetPickerFragment;

    sget-object v7, Lcom/oneplus/gallery/MediaSetPickerFragment;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v8, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/gallery/MediaSetPickerFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 607
    iget-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetPickerFragment:Lcom/oneplus/gallery/MediaSetPickerFragment;

    sget-object v7, Lcom/oneplus/gallery/MediaSetPickerFragment;->EVENT_MEDIA_SET_CLICKED:Lcom/oneplus/base/EventKey;

    iget-object v8, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetClickedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/gallery/MediaSetPickerFragment;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 610
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 611
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    if-eqz v3, :cond_3

    .line 612
    iget-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetPickerFragment:Lcom/oneplus/gallery/MediaSetPickerFragment;

    const-string v7, "GalleryActivity.MediaSetPicker"

    invoke-virtual {v1, v9, v6, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 615
    :goto_2
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 616
    return-void

    .line 554
    .end local v0    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v1    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    .end local v3    # "isNewFragment":Z
    :cond_1
    const v6, 0x7f0200ae

    goto/16 :goto_0

    .line 598
    .restart local v0    # "fragmentManager":Landroid/app/FragmentManager;
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_IsGridViewFragmentAdded:Z

    goto :goto_1

    .line 614
    .restart local v1    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    .restart local v3    # "isNewFragment":Z
    :cond_3
    iget-object v6, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetPickerFragment:Lcom/oneplus/gallery/MediaSetPickerFragment;

    invoke-virtual {v1, v6}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_2
.end method

.method private updateTitleBar()V
    .locals 8

    .prologue
    const v7, 0x7f090073

    const v6, 0x7f0600a4

    const v3, 0x7f020062

    const v2, 0x7f020061

    const/4 v4, 0x0

    .line 654
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 656
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v5, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    sget-object v1, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/MediaPickerActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 658
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v6, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 674
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v3

    .line 657
    goto :goto_0

    .line 662
    :cond_3
    iget-object v5, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    sget-object v1, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/MediaPickerActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 663
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-eqz v1, :cond_1

    .line 665
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery/GridViewFragment;->PROP_SELECTION_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 666
    .local v0, "selectedCount":I
    if-gtz v0, :cond_5

    .line 667
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 671
    :goto_3
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v2

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    :goto_4
    invoke-interface {v2, v6, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_1

    .end local v0    # "selectedCount":I
    :cond_4
    move v2, v3

    .line 662
    goto :goto_2

    .line 669
    .restart local v0    # "selectedCount":I
    :cond_5
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    move v1, v4

    .line 671
    goto :goto_4
.end method

.method private updateUIMargins(ZZ)V
    .locals 7
    .param p1, "isStatusBarVisible"    # Z
    .param p2, "isNavBarVisible"    # Z

    .prologue
    const/4 v6, 0x0

    .line 622
    iget-object v4, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_PageContainer:Landroid/widget/RelativeLayout;

    if-nez v4, :cond_0

    .line 650
    :goto_0
    return-void

    .line 626
    :cond_0
    sget-object v4, Lcom/oneplus/gallery/MediaPickerActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/gallery/MediaPickerActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/ScreenSize;

    .line 627
    .local v2, "screenSize":Lcom/oneplus/base/ScreenSize;
    const/4 v3, 0x0

    .line 629
    .local v3, "top":I
    if-eqz p2, :cond_2

    .line 631
    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_1

    .line 633
    const/4 v1, 0x0

    .line 634
    .local v1, "right":I
    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getNavigationBarSize()I

    move-result v0

    .line 648
    .local v0, "bottom":I
    :goto_1
    iget-object v4, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_PageContainer:Landroid/widget/RelativeLayout;

    invoke-static {v4, v6, v3, v1, v0}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    .line 649
    iget-object v4, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-static {v4, v6, v3, v1, v0}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    goto :goto_0

    .line 638
    .end local v0    # "bottom":I
    .end local v1    # "right":I
    :cond_1
    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getNavigationBarSize()I

    move-result v1

    .line 639
    .restart local v1    # "right":I
    const/4 v0, 0x0

    .restart local v0    # "bottom":I
    goto :goto_1

    .line 644
    .end local v0    # "bottom":I
    .end local v1    # "right":I
    :cond_2
    const/4 v1, 0x0

    .line 645
    .restart local v1    # "right":I
    const/4 v0, 0x0

    .restart local v0    # "bottom":I
    goto :goto_1
.end method


# virtual methods
.method public goBack()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 198
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->finish()V

    .line 207
    :goto_0
    return v1

    .line 204
    :cond_1
    invoke-direct {p0, v1}, Lcom/oneplus/gallery/MediaPickerActivity;->closeGridView(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCreate() - start"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/GalleryActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 220
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 221
    .local v0, "bundles":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 223
    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_IsMultipleSelect:Z

    .line 227
    :cond_0
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v1

    const-class v2, Lcom/oneplus/gallery/media/MediaManager;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/MediaManager;

    iput-object v1, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaManager:Lcom/oneplus/gallery/media/MediaManager;

    .line 230
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->setupMediaSetList()V

    .line 233
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->setupUI()V

    .line 234
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->releaseMediaSetList()V

    .line 245
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryActivity;->onDestroy()V

    .line 247
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetPickerFragment:Lcom/oneplus/gallery/MediaSetPickerFragment;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetPickerFragment:Lcom/oneplus/gallery/MediaSetPickerFragment;

    sget-object v1, Lcom/oneplus/gallery/MediaSetPickerFragment;->EVENT_MEDIA_SET_CLICKED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_MediaSetClickedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/MediaSetPickerFragment;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity;->m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 251
    return-void
.end method

.method protected onNavigationBarVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryActivity;->onNavigationBarVisibilityChanged(Z)V

    .line 289
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery/MediaPickerActivity;->updateUIMargins(ZZ)V

    .line 290
    return-void
.end method

.method protected onStatusBarVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 298
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryActivity;->onStatusBarVisibilityChanged(Z)V

    .line 299
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaPickerActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery/MediaPickerActivity;->updateUIMargins(ZZ)V

    .line 300
    return-void
.end method
