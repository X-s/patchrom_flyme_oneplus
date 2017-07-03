.class public abstract Lcom/oneplus/gallery/editor/BaseEditorMode;
.super Lcom/oneplus/base/BasicBaseObject;
.source "BaseEditorMode.java"

# interfaces
.implements Lcom/oneplus/gallery/editor/EditorMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/editor/BaseEditorMode$5;
    }
.end annotation


# static fields
.field private static final DURATION_UI_VISIBILITY_ANIMATION:J = 0x96L


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private m_BaseView:Landroid/view/View;

.field private final m_EditorOrientationChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_EnterFlags:I

.field private m_FragmentRootView:Landroid/view/View;

.field private final m_FragmentStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/base/BaseFragment$State;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsEnter:Z

.field private m_Media:Lcom/oneplus/gallery/media/PhotoMedia;

.field private m_PhotoEditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

.field private final m_PhotoMediaChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/gallery/media/PhotoMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V
    .locals 3
    .param p1, "fragment"    # Lcom/oneplus/gallery/PhotoEditorFragment;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/oneplus/base/BasicBaseObject;-><init>()V

    .line 35
    new-instance v0, Lcom/oneplus/gallery/editor/BaseEditorMode$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/editor/BaseEditorMode$1;-><init>(Lcom/oneplus/gallery/editor/BaseEditorMode;)V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_EditorOrientationChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 43
    new-instance v0, Lcom/oneplus/gallery/editor/BaseEditorMode$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/editor/BaseEditorMode$2;-><init>(Lcom/oneplus/gallery/editor/BaseEditorMode;)V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_FragmentStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 60
    new-instance v0, Lcom/oneplus/gallery/editor/BaseEditorMode$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/editor/BaseEditorMode$3;-><init>(Lcom/oneplus/gallery/editor/BaseEditorMode;)V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_PhotoMediaChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fragment should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->TAG:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_PhotoEditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    .line 80
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_PhotoMediaChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/PhotoEditorFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 81
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_FragmentStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/PhotoEditorFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 82
    invoke-virtual {p1}, Lcom/oneplus/gallery/PhotoEditorFragment;->getPhotoEditor()Lcom/oneplus/gallery/editor/PhotoEditor;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_EditorOrientationChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/editor/PhotoEditor;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/editor/BaseEditorMode;Lcom/oneplus/gallery/media/PhotoMedia;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/BaseEditorMode;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/PhotoMedia;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/editor/BaseEditorMode;->handleMediaChanged(Lcom/oneplus/gallery/media/PhotoMedia;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/editor/BaseEditorMode;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/BaseEditorMode;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_BaseView:Landroid/view/View;

    return-object v0
.end method

.method private handleMediaChanged(Lcom/oneplus/gallery/media/PhotoMedia;)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery/media/PhotoMedia;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_Media:Lcom/oneplus/gallery/media/PhotoMedia;

    .line 203
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/editor/BaseEditorMode;->onMediaChanged(Lcom/oneplus/gallery/media/PhotoMedia;)V

    .line 204
    return-void
.end method

.method private setupUI()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_FragmentRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->TAG:Ljava/lang/String;

    const-string v1, "setupUI()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_FragmentRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/BaseEditorMode;->onCreateUI(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_BaseView:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method protected canShowUI()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public cancelTempOriginalPreview()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public enter(I)Z
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v0, 0x1

    .line 109
    iget-boolean v1, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_IsEnter:Z

    if-eqz v1, :cond_0

    .line 125
    :goto_0
    return v0

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->TAG:Ljava/lang/String;

    const-string v2, "enter() - Flags: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    iput-boolean v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_IsEnter:Z

    .line 116
    iput p1, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_EnterFlags:I

    .line 119
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/editor/BaseEditorMode;->onEnter(I)Z

    move-result v0

    .line 122
    .local v0, "success":Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/editor/BaseEditorMode;->updateUIVisibility(Z)V

    goto :goto_0
.end method

.method public exit(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 133
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->TAG:Ljava/lang/String;

    const-string v1, "exit() - Flags: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    iput-boolean v3, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_IsEnter:Z

    .line 139
    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/editor/BaseEditorMode;->updateUIVisibility(Z)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/editor/BaseEditorMode;->onExit(I)V

    .line 143
    return-void
.end method

.method protected getBaseView()Landroid/view/View;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_BaseView:Landroid/view/View;

    return-object v0
.end method

.method protected getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_PhotoEditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    return-object v0
.end method

.method protected getMedia()Lcom/oneplus/gallery/media/PhotoMedia;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_Media:Lcom/oneplus/gallery/media/PhotoMedia;

    return-object v0
.end method

.method protected getPhotoEditor()Lcom/oneplus/gallery/editor/PhotoEditor;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_PhotoEditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getPhotoEditor()Lcom/oneplus/gallery/editor/PhotoEditor;

    move-result-object v0

    return-object v0
.end method

.method protected getPhotoEditorFragment()Lcom/oneplus/gallery/PhotoEditorFragment;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_PhotoEditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    return-object v0
.end method

.method public handlePreviewTouchEvent(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "imageBounds"    # Landroid/graphics/Rect;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 210
    return-void
.end method

.method public isEnter()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_IsEnter:Z

    return v0
.end method

.method protected isInitialEditorMode()Z
    .locals 2

    .prologue
    .line 225
    iget v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_EnterFlags:I

    sget v1, Lcom/oneplus/gallery/editor/BaseEditorMode;->FLAG_IS_INITIAL_EDITOR_MODE:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSetupUI()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_FragmentRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x1

    .line 237
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onCreateUI(Landroid/view/View;)Landroid/view/View;
.end method

.method public final onCreateView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_FragmentRootView:Landroid/view/View;

    .line 257
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/BaseEditorMode;->setupUI()V

    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/BaseEditorMode;->updateUIVisibility(Z)V

    .line 261
    return-void
.end method

.method protected abstract onDestroyUI()V
.end method

.method public final onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/BaseEditorMode;->onDestroyUI()V

    .line 278
    iput-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_FragmentRootView:Landroid/view/View;

    .line 279
    iput-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_BaseView:Landroid/view/View;

    .line 280
    return-void
.end method

.method protected onEditorOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 288
    return-void
.end method

.method protected abstract onEnter(I)Z
.end method

.method protected abstract onExit(I)V
.end method

.method protected onFragmentDestroying()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method protected onFragmentResuming()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method protected onMediaChanged(Lcom/oneplus/gallery/media/PhotoMedia;)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery/media/PhotoMedia;

    .prologue
    .line 325
    return-void
.end method

.method protected onRelease()V
    .locals 4

    .prologue
    .line 333
    iget-object v1, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_PhotoEditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_PhotoEditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    sget-object v2, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_PhotoMediaChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/gallery/PhotoEditorFragment;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 336
    iget-object v1, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_PhotoEditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    sget-object v2, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_FragmentStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/gallery/PhotoEditorFragment;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 338
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/BaseEditorMode;->getPhotoEditor()Lcom/oneplus/gallery/editor/PhotoEditor;

    move-result-object v0

    .line 339
    .local v0, "photoEditor":Lcom/oneplus/gallery/editor/PhotoEditor;
    if-eqz v0, :cond_0

    .line 340
    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_EditorOrientationChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/editor/PhotoEditor;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 344
    .end local v0    # "photoEditor":Lcom/oneplus/gallery/editor/PhotoEditor;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_PhotoEditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    .line 347
    invoke-super {p0}, Lcom/oneplus/base/BasicBaseObject;->onRelease()V

    .line 348
    return-void
.end method

.method protected setUIVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery/editor/BaseEditorMode;->setUIVisibility(ZZ)V

    .line 355
    return-void
.end method

.method protected setUIVisibility(ZZ)V
    .locals 8
    .param p1, "visible"    # Z
    .param p2, "animation"    # Z

    .prologue
    const-wide/16 v6, 0x96

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 359
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_BaseView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->TAG:Ljava/lang/String;

    const-string v1, "setUIVisibility() - Visible: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    if-eqz p1, :cond_2

    .line 367
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_BaseView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 368
    if-eqz p2, :cond_1

    .line 369
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_BaseView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_BaseView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 375
    :cond_2
    if-eqz p2, :cond_3

    .line 377
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_BaseView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery/editor/BaseEditorMode$4;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/editor/BaseEditorMode$4;-><init>(Lcom/oneplus/gallery/editor/BaseEditorMode;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_BaseView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 389
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_BaseView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showTempOriginalPreview()Z
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method protected updateUIVisibility(Z)V
    .locals 2
    .param p1, "animation"    # Z

    .prologue
    .line 423
    iget-boolean v1, p0, Lcom/oneplus/gallery/editor/BaseEditorMode;->m_IsEnter:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/BaseEditorMode;->canShowUI()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 424
    .local v0, "visible":Z
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/gallery/editor/BaseEditorMode;->setUIVisibility(ZZ)V

    .line 425
    return-void

    .line 423
    .end local v0    # "visible":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
