.class public Lcom/oneplus/gallery2/MediaPickerActivity;
.super Lcom/oneplus/gallery2/GalleryActivity;
.source "MediaPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/MediaPickerActivity$9;
    }
.end annotation


# static fields
.field private static final DURATION_DEACTIVATE_MEDIA_SOURCES_DELAY:J = 0x5dcL

.field private static final DURATION_GRIDVIEW_ENTER_ANIMATION:J = 0x12cL

.field private static final DURATION_GRIDVIEW_ENTER_DELAY:J = 0xc8L

.field private static final DURATION_GRIDVIEW_EXIT_ANIMATION:J = 0x12cL

.field private static final FRAGMENT_TAG_GRID_VIEW:Ljava/lang/String; = "GalleryActivity.GridView"

.field private static final FRAGMENT_TAG_MEDIA_SET_PICKER:Ljava/lang/String; = "GalleryActivity.MediaSetPicker"

.field private static final INTERPOLATOR_GRIDVIEW_ANIMATION:Landroid/animation/TimeInterpolator;


# instance fields
.field private m_ActivityBackgroundContainer:Landroid/widget/RelativeLayout;

.field private m_ContentView:Landroid/view/ViewGroup;

.field private final m_DeactivateMediaSourcesRunnable:Ljava/lang/Runnable;

.field private final m_GridViewClosedRunnable:Ljava/lang/Runnable;

.field private m_GridViewContainer:Landroid/view/View;

.field private m_GridViewEnterPositionY:I

.field private m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

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

.field private m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

.field private final m_MediaSetClickedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListItemEventArgs",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

.field private m_MediaSetPickerFragment:Lcom/oneplus/gallery2/MediaSetPickerFragment;

.field private m_MediaSourcesActivationHandle:Lcom/oneplus/base/Handle;

.field private m_PageContainer:Landroid/widget/RelativeLayout;

.field private m_StatusBarBackground:Landroid/view/View;

.field private m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

.field private m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

.field private m_Titlebar:Landroid/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 58
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/gallery2/MediaPickerActivity;->INTERPOLATOR_GRIDVIEW_ANIMATION:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryActivity;-><init>()V

    .line 75
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 80
    new-instance v0, Lcom/oneplus/gallery2/MediaPickerActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaPickerActivity$1;-><init>(Lcom/oneplus/gallery2/MediaPickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridviewMediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 88
    new-instance v0, Lcom/oneplus/gallery2/MediaPickerActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaPickerActivity$2;-><init>(Lcom/oneplus/gallery2/MediaPickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetClickedHandler:Lcom/oneplus/base/EventHandler;

    .line 96
    new-instance v0, Lcom/oneplus/gallery2/MediaPickerActivity$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaPickerActivity$3;-><init>(Lcom/oneplus/gallery2/MediaPickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridviewConfirmClickedHandler:Lcom/oneplus/base/EventHandler;

    .line 107
    new-instance v0, Lcom/oneplus/gallery2/MediaPickerActivity$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaPickerActivity$4;-><init>(Lcom/oneplus/gallery2/MediaPickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_DeactivateMediaSourcesRunnable:Ljava/lang/Runnable;

    .line 115
    new-instance v0, Lcom/oneplus/gallery2/MediaPickerActivity$5;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaPickerActivity$5;-><init>(Lcom/oneplus/gallery2/MediaPickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewClosedRunnable:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Lcom/oneplus/gallery2/MediaPickerActivity$6;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaPickerActivity$6;-><init>(Lcom/oneplus/gallery2/MediaPickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewOpenedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/MediaPickerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaPickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaPickerActivity;->onGridViewSelectedMediaCountChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/MediaPickerActivity;Lcom/oneplus/gallery2/ListItemEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaPickerActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery2/ListItemEventArgs;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaPickerActivity;->onMediaSetClicked(Lcom/oneplus/gallery2/ListItemEventArgs;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/MediaPickerActivity;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaPickerActivity;
    .param p1, "x1"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaPickerActivity;->onGridViewConfirmClicked(Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/MediaPickerActivity;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaPickerActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSourcesActivationHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oneplus/gallery2/MediaPickerActivity;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaPickerActivity;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSourcesActivationHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oneplus/gallery2/MediaPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaPickerActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->onGridViewClosed()V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/gallery2/MediaPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaPickerActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->onGridViewOpened()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/gallery2/MediaPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaPickerActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->onFinished()V

    return-void
.end method

.method private attachGridViewFragment()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 135
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-nez v1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->TAG:Ljava/lang/String;

    const-string v1, "attachGridViewFragment() - No fragment"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_IsGridViewFragmentAdded:Z

    if-nez v1, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f06000d

    iget-object v3, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    const-string v4, "GalleryActivity.GridView"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 143
    iput-boolean v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_IsGridViewFragmentAdded:Z

    goto :goto_0

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/GridViewFragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/GridViewFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method private closeGridView(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_PageContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_PageContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 166
    :cond_2
    if-eqz p1, :cond_3

    .line 168
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    const-string v1, "gallery_activity_background"

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/MediaPickerActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 169
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewEnterPositionY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/MediaPickerActivity;->INTERPOLATOR_GRIDVIEW_ANIMATION:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewClosedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 178
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->onGridViewClosed()V

    goto :goto_0
.end method

.method private detachGridViewFragment()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    sget-object v0, Lcom/oneplus/gallery2/MediaPickerActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/MediaPickerActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    if-eq v0, v1, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->TAG:Ljava/lang/String;

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
    .line 199
    iget-object v3, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-nez v3, :cond_1

    .line 200
    const/4 v2, 0x0

    .line 208
    :cond_0
    return-object v2

    .line 202
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v2, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v3, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v3}, Lcom/oneplus/gallery2/GridViewFragment;->getSelectedMedia()Ljava/util/List;

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

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 205
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onFinished()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 283
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->getSelectedUriList()Ljava/util/ArrayList;

    move-result-object v4

    .line 286
    .local v4, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 288
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 289
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 300
    :goto_0
    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v2}, Lcom/oneplus/gallery2/MediaPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 302
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->finish()V

    .line 303
    return-void

    .line 292
    :cond_0
    new-array v3, v9, [Ljava/lang/String;

    const-string v5, "image/*"

    aput-object v5, v3, v8

    .line 293
    .local v3, "mimeType":[Ljava/lang/String;
    new-instance v0, Landroid/content/ClipData;

    const/4 v6, 0x0

    new-instance v7, Landroid/content/ClipData$Item;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-direct {v7, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v0, v6, v3, v7}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 294
    .local v0, "clipData":Landroid/content/ClipData;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 296
    new-instance v6, Landroid/content/ClipData$Item;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-direct {v6, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v6}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 298
    :cond_1
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    goto :goto_0
.end method

.method private onGridViewClosed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 358
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewFragment;->backToInitialUIState()V

    .line 360
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 361
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 362
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 363
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->detachGridViewFragment()V

    .line 364
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 368
    iput-object v3, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 371
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->updateTitleBar()V

    .line 372
    return-void
.end method

.method private onGridViewConfirmClicked(Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "args"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->onFinished()V

    .line 308
    return-void
.end method

.method private onGridViewOpened()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_PageContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_PageContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 387
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->updateTitleBar()V

    .line 388
    return-void
.end method

.method private onGridViewSelectedMediaCountChanged(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 394
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->TAG:Ljava/lang/String;

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

    .line 395
    iget-boolean v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_IsMultipleSelect:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 397
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->onFinished()V

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->updateTitleBar()V

    goto :goto_0
.end method

.method private onMediaSetClicked(Lcom/oneplus/gallery2/ListItemEventArgs;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/ListItemEventArgs",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "e":Lcom/oneplus/gallery2/ListItemEventArgs;, "Lcom/oneplus/gallery2/ListItemEventArgs<Lcom/oneplus/gallery2/media/MediaSet;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 460
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListItemEventArgs;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    .line 462
    .local v0, "set":Lcom/oneplus/gallery2/media/MediaSet;
    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->TAG:Ljava/lang/String;

    const-string v2, "onMediaSetClicked() - mediaSet is released"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->TAG:Ljava/lang/String;

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

    .line 472
    sget-object v1, Lcom/oneplus/gallery2/media/MediaComparator;->TAKEN_TIME_DESC:Lcom/oneplus/gallery2/media/MediaComparator;

    const/4 v4, -0x1

    invoke-interface {v0, v1, v4, v3}, Lcom/oneplus/gallery2/media/MediaSet;->openMediaList(Lcom/oneplus/gallery2/media/MediaComparator;II)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 485
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->attachGridViewFragment()Z

    move-result v1

    if-nez v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->TAG:Ljava/lang/String;

    const-string v2, "onMediaSetClicked() - Fail to attach fragment"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v4, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 491
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v4, Lcom/oneplus/gallery2/GridViewFragment;->PROP_HAS_ACTION_BAR:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 492
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v4, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v5, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-virtual {v1, v4, v5}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 493
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v4, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v4, v0}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 494
    iget-object v4, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v5, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_LONG_CLICK_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    iget-boolean v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_IsMultipleSelect:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 495
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v3, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 496
    iget-object v3, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v4, Lcom/oneplus/gallery2/GridViewFragment;->PROP_SELECTION_STYLE:Lcom/oneplus/base/PropertyKey;

    iget-boolean v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_IsMultipleSelect:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;->PICKER_MULTIPLE_CHOICE:Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    :goto_2
    invoke-virtual {v3, v4, v1}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 498
    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/MediaPickerActivity;->openGridView(Z)Z

    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 494
    goto :goto_1

    .line 496
    :cond_3
    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;->PICKER_SINGLE_CHOICE:Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    goto :goto_2
.end method

.method private openGridView(Z)Z
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 411
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-nez v1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v0

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    if-nez v1, :cond_2

    .line 417
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/MediaPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    .line 418
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 423
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->attachGridViewFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 429
    if-eqz p1, :cond_3

    .line 431
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    const-string v1, "gallery_activity_background"

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/MediaPickerActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 432
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 433
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    iget v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewEnterPositionY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 434
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

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

    sget-object v1, Lcom/oneplus/gallery2/MediaPickerActivity;->INTERPOLATOR_GRIDVIEW_ANIMATION:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewOpenedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 451
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 445
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 446
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 447
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->onGridViewOpened()V

    goto :goto_1
.end method

.method private releaseMediaSetList()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    if-nez v0, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaSetList;->release()V

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    goto :goto_0
.end method

.method private setupMediaSetList()V
    .locals 3

    .prologue
    .line 541
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->TAG:Ljava/lang/String;

    const-string v1, "setupMediaSetList() - start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    if-eqz v0, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/AllMediaSetList;->open(Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/AllMediaSetList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    .line 550
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupMediaSetList() - m_MediaSetList.size() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaSetList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetPickerFragment:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetPickerFragment:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    sget-object v1, Lcom/oneplus/gallery2/MediaSetPickerFragment;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setupUI()V
    .locals 10

    .prologue
    const v9, 0x7f060014

    .line 566
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->TAG:Ljava/lang/String;

    const-string v7, "setupUI() - start"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 570
    .local v4, "res":Landroid/content/res/Resources;
    const v6, 0x7f05008b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewEnterPositionY:I

    .line 573
    const v6, 0x7f030001

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_ContentView:Landroid/view/ViewGroup;

    .line 574
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_ContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/MediaPickerActivity;->setContentView(Landroid/view/View;)V

    .line 577
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const-string v7, "gallery_activity_background"

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/MediaPickerActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 580
    sget-object v6, Lcom/oneplus/gallery2/MediaPickerActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/MediaPickerActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/ScreenSize;

    .line 581
    .local v5, "screenSize":Lcom/oneplus/base/ScreenSize;
    const v6, 0x7f060001

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/MediaPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_StatusBarBackground:Landroid/view/View;

    .line 582
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_StatusBarBackground:Landroid/view/View;

    const-string v7, "entry_page_tab_background"

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/MediaPickerActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 583
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_StatusBarBackground:Landroid/view/View;

    invoke-virtual {v5}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v7

    invoke-static {v6, v7}, Lcom/oneplus/widget/ViewUtils;->setHeight(Landroid/view/View;I)V

    .line 584
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v6

    const-string v7, "status_bar"

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/MediaPickerActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/oneplus/gallery2/Gallery;->setStatusBarColor(I)Lcom/oneplus/base/Handle;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 587
    const v6, 0x7f060013

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/MediaPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_ActivityBackgroundContainer:Landroid/widget/RelativeLayout;

    .line 588
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_ActivityBackgroundContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_PageContainer:Landroid/widget/RelativeLayout;

    .line 589
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_ActivityBackgroundContainer:Landroid/widget/RelativeLayout;

    const v7, 0x7f06000c

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    .line 590
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_ActivityBackgroundContainer:Landroid/widget/RelativeLayout;

    const v7, 0x7f060005

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Toolbar;

    iput-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    .line 593
    sget-object v6, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/MediaPickerActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 594
    .local v2, "isBlackMode":Z
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    const-string v7, "action_bar_background"

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/MediaPickerActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Toolbar;->setBackgroundColor(I)V

    .line 595
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    const v7, 0x7f0a0023

    invoke-virtual {v6, p0, v7}, Landroid/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 596
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    const-string v7, "tool_bar_text"

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/MediaPickerActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    .line 597
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    const v7, 0x7f0b0006

    invoke-virtual {v6, v7}, Landroid/widget/Toolbar;->inflateMenu(I)V

    .line 598
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    invoke-virtual {v6}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v6

    const v7, 0x7f0600a5

    invoke-interface {v6, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-eqz v2, :cond_1

    const v6, 0x7f0200ad

    :goto_0
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 599
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    new-instance v7, Lcom/oneplus/gallery2/MediaPickerActivity$7;

    invoke-direct {v7, p0}, Lcom/oneplus/gallery2/MediaPickerActivity$7;-><init>(Lcom/oneplus/gallery2/MediaPickerActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 614
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    new-instance v7, Lcom/oneplus/gallery2/MediaPickerActivity$8;

    invoke-direct {v7, p0}, Lcom/oneplus/gallery2/MediaPickerActivity$8;-><init>(Lcom/oneplus/gallery2/MediaPickerActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->updateTitleBar()V

    .line 625
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_ActivityBackgroundContainer:Landroid/widget/RelativeLayout;

    const-string v7, "media_picker_list_item_background"

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/MediaPickerActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 628
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v6

    sget-object v7, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v6, v7}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v6

    sget-object v8, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v6, v8}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct {p0, v7, v6}, Lcom/oneplus/gallery2/MediaPickerActivity;->updateUIMargins(ZZ)V

    .line 631
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 632
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    const-string v6, "GalleryActivity.MediaSetPicker"

    invoke-virtual {v0, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery2/MediaSetPickerFragment;

    iput-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetPickerFragment:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    .line 633
    const-string v6, "GalleryActivity.GridView"

    invoke-virtual {v0, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery2/GridViewFragment;

    iput-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    .line 635
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-nez v6, :cond_2

    .line 637
    new-instance v6, Lcom/oneplus/gallery2/GridViewFragment;

    invoke-direct {v6}, Lcom/oneplus/gallery2/GridViewFragment;-><init>()V

    iput-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    .line 638
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v7, Lcom/oneplus/gallery2/GridViewFragment;->PROP_SELECTION_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v8, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridviewMediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/gallery2/GridViewFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 644
    :goto_1
    const/4 v3, 0x0

    .line 645
    .local v3, "isNewFragment":Z
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetPickerFragment:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    if-nez v6, :cond_0

    .line 647
    new-instance v6, Lcom/oneplus/gallery2/MediaSetPickerFragment;

    invoke-direct {v6}, Lcom/oneplus/gallery2/MediaSetPickerFragment;-><init>()V

    iput-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetPickerFragment:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    .line 648
    const/4 v3, 0x1

    .line 650
    :cond_0
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetPickerFragment:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    sget-object v7, Lcom/oneplus/gallery2/MediaSetPickerFragment;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v8, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 651
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetPickerFragment:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    sget-object v7, Lcom/oneplus/gallery2/MediaSetPickerFragment;->EVENT_MEDIA_SET_CLICKED:Lcom/oneplus/base/EventKey;

    iget-object v8, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetClickedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 654
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 655
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    if-eqz v3, :cond_3

    .line 656
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetPickerFragment:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    const-string v7, "GalleryActivity.MediaSetPicker"

    invoke-virtual {v1, v9, v6, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 659
    :goto_2
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 660
    return-void

    .line 598
    .end local v0    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v1    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    .end local v3    # "isNewFragment":Z
    :cond_1
    const v6, 0x7f0200ae

    goto/16 :goto_0

    .line 642
    .restart local v0    # "fragmentManager":Landroid/app/FragmentManager;
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_IsGridViewFragmentAdded:Z

    goto :goto_1

    .line 658
    .restart local v1    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    .restart local v3    # "isNewFragment":Z
    :cond_3
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetPickerFragment:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    invoke-virtual {v1, v6}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_2
.end method

.method private updateTitleBar()V
    .locals 8

    .prologue
    const v7, 0x7f0600a4

    const v4, 0x7f020062

    const v3, 0x7f020061

    const/4 v5, 0x0

    .line 700
    const/4 v1, 0x0

    .line 701
    .local v1, "titleBarChooseString":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/gallery2/MediaPickerActivity$9;->$SwitchMap$com$oneplus$gallery2$media$MediaType:[I

    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    invoke-virtual {v6}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v6

    aget v2, v2, v6

    packed-switch v2, :pswitch_data_0

    .line 711
    :goto_0
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 713
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 714
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    sget-object v2, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/MediaPickerActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v6, v2}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 715
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    invoke-virtual {v2}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v7, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 731
    :cond_1
    :goto_2
    return-void

    .line 704
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f090073

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 705
    goto :goto_0

    .line 707
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f090074

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move v2, v4

    .line 714
    goto :goto_1

    .line 719
    :cond_3
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    sget-object v2, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/MediaPickerActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 720
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-eqz v2, :cond_1

    .line 722
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v3, Lcom/oneplus/gallery2/GridViewFragment;->PROP_SELECTION_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 723
    .local v0, "selectedCount":I
    if-gtz v0, :cond_5

    .line 724
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 728
    :goto_4
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    invoke-virtual {v2}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v3

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    :goto_5
    invoke-interface {v3, v7, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_2

    .end local v0    # "selectedCount":I
    :cond_4
    move v3, v4

    .line 719
    goto :goto_3

    .line 726
    .restart local v0    # "selectedCount":I
    :cond_5
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_Titlebar:Landroid/widget/Toolbar;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    move v2, v5

    .line 728
    goto :goto_5

    .line 701
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateUIMargins(ZZ)V
    .locals 7
    .param p1, "isStatusBarVisible"    # Z
    .param p2, "isNavBarVisible"    # Z

    .prologue
    const/4 v6, 0x0

    .line 666
    iget-object v4, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_PageContainer:Landroid/widget/RelativeLayout;

    if-nez v4, :cond_0

    .line 694
    :goto_0
    return-void

    .line 670
    :cond_0
    sget-object v4, Lcom/oneplus/gallery2/MediaPickerActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/MediaPickerActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/ScreenSize;

    .line 671
    .local v2, "screenSize":Lcom/oneplus/base/ScreenSize;
    const/4 v3, 0x0

    .line 673
    .local v3, "top":I
    if-eqz p2, :cond_2

    .line 675
    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_1

    .line 677
    const/4 v1, 0x0

    .line 678
    .local v1, "right":I
    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getNavigationBarSize()I

    move-result v0

    .line 692
    .local v0, "bottom":I
    :goto_1
    iget-object v4, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_PageContainer:Landroid/widget/RelativeLayout;

    invoke-static {v4, v6, v3, v1, v0}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    .line 693
    iget-object v4, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-static {v4, v6, v3, v1, v0}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    goto :goto_0

    .line 682
    .end local v0    # "bottom":I
    .end local v1    # "right":I
    :cond_1
    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getNavigationBarSize()I

    move-result v1

    .line 683
    .restart local v1    # "right":I
    const/4 v0, 0x0

    .restart local v0    # "bottom":I
    goto :goto_1

    .line 688
    .end local v0    # "bottom":I
    .end local v1    # "right":I
    :cond_2
    const/4 v1, 0x0

    .line 689
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

    .line 215
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->finish()V

    .line 224
    :goto_0
    return v1

    .line 221
    :cond_1
    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/MediaPickerActivity;->closeGridView(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 5
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
    .line 231
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->TAG:Ljava/lang/String;

    const-string v3, "onCreate() - start"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/GalleryActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 236
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 237
    .local v0, "bundles":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 240
    const-string v2, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_IsMultipleSelect:Z

    .line 243
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 245
    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    sget-object v2, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    iput-object v2, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 256
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->setupMediaSetList()V

    .line 259
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->setupUI()V

    .line 260
    return-void

    .line 247
    :cond_1
    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 248
    sget-object v2, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    iput-object v2, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    goto :goto_0

    .line 250
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate() - Unknown mimeType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->TAG:Ljava/lang/String;

    const-string v3, "onCreate() - MimeType is empty"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->releaseMediaSetList()V

    .line 271
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryActivity;->onDestroy()V

    .line 273
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetPickerFragment:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetPickerFragment:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    sget-object v1, Lcom/oneplus/gallery2/MediaSetPickerFragment;->EVENT_MEDIA_SET_CLICKED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSetClickedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 277
    return-void
.end method

.method protected onNavigationBarVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 314
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryActivity;->onNavigationBarVisibilityChanged(Z)V

    .line 315
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery2/MediaPickerActivity;->updateUIMargins(ZZ)V

    .line 316
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 324
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_DeactivateMediaSourcesRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    .line 327
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryActivity;->onPause()V

    .line 328
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 336
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryActivity;->onResume()V

    .line 339
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_DeactivateMediaSourcesRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V

    .line 340
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSourcesActivationHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaSources;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSourcesActivationHandle:Lcom/oneplus/base/Handle;

    .line 342
    :cond_0
    return-void
.end method

.method protected onStatusBarVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 349
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryActivity;->onStatusBarVisibilityChanged(Z)V

    .line 350
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaPickerActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/MediaPickerActivity;->updateUIMargins(ZZ)V

    .line 351
    return-void
.end method
