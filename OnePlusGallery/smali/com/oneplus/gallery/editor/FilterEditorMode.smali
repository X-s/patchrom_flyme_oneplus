.class public Lcom/oneplus/gallery/editor/FilterEditorMode;
.super Lcom/oneplus/gallery/editor/BaseEditorMode;
.source "FilterEditorMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/editor/FilterEditorMode$5;,
        Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;
    }
.end annotation


# static fields
.field private static final NET_EASE_FILTERS:[Lcom/oneplus/gallery/editor/FilterType;


# instance fields
.field private m_ControlPanelListener:Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelListener;

.field private m_CurrentFilterItemView:Landroid/view/View;

.field private m_CurrentProgress:Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;

.field private m_FilterItemContainer:Landroid/view/ViewGroup;

.field private m_FilterSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private m_FilterToolBar:Landroid/widget/HorizontalScrollView;

.field private m_FilterToolBarItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery/editor/FilterType;",
            "Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_FilterType:Lcom/oneplus/gallery/editor/FilterType;

.field private m_IsFilterLevelEnabled:Z

.field private m_LastCommitProgressTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery/editor/FilterType;",
            "Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;",
            ">;"
        }
    .end annotation
.end field

.field private m_NetEaseFilter:Lcom/oneplus/gallery/editor/NetEaseFilter;

.field private final m_OnFilterThumbnailsReadyCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_ProgressControlsHandle:Lcom/oneplus/base/Handle;

.field private m_ShowTempOriginalPreview:Z

.field private m_WatermarkContainer:Landroid/view/View;

.field private m_WatermarkTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/oneplus/gallery/editor/FilterType;

    const/4 v1, 0x0

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NORMAL:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_SALT_1:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_SALT_3:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_SIMPLE:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_SUMMER:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_TWILIGHT:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_TIME_3:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_FALL_1:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_FALL_2:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_CLEAR:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_COLD:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_FOOD:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_FLUORESCENT:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_GRAY:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_INK_1:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_INK_3:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/gallery/editor/FilterEditorMode;->NET_EASE_FILTERS:[Lcom/oneplus/gallery/editor/FilterType;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/oneplus/gallery/PhotoEditorFragment;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/editor/BaseEditorMode;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    .line 59
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterToolBarItems:Ljava/util/Map;

    .line 60
    sget-object v0, Lcom/oneplus/gallery/editor/FilterType;->NORMAL:Lcom/oneplus/gallery/editor/FilterType;

    iput-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterType:Lcom/oneplus/gallery/editor/FilterType;

    .line 62
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_LastCommitProgressTable:Ljava/util/Map;

    .line 71
    new-instance v0, Lcom/oneplus/gallery/editor/FilterEditorMode$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/editor/FilterEditorMode$1;-><init>(Lcom/oneplus/gallery/editor/FilterEditorMode;)V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_OnFilterThumbnailsReadyCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 81
    new-instance v0, Lcom/oneplus/gallery/editor/FilterEditorMode$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/editor/FilterEditorMode$2;-><init>(Lcom/oneplus/gallery/editor/FilterEditorMode;)V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_ControlPanelListener:Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelListener;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/editor/FilterEditorMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/FilterEditorMode;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->onFilterThumbnailsReady()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/editor/FilterEditorMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/FilterEditorMode;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->onControlPanelNegativeClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/editor/FilterEditorMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/FilterEditorMode;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->onControlPanelPositiveClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/editor/FilterEditorMode;Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/FilterEditorMode;
    .param p1, "x1"    # Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/editor/FilterEditorMode;->onControlPanelProgressChanged(Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/gallery/editor/FilterEditorMode;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/FilterEditorMode;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_CurrentFilterItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oneplus/gallery/editor/FilterEditorMode;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/FilterEditorMode;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_CurrentFilterItemView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oneplus/gallery/editor/FilterEditorMode;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/FilterEditorMode;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/editor/FilterEditorMode;->updateFilterItemPosition(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/gallery/editor/FilterEditorMode;Lcom/oneplus/gallery/editor/FilterType;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/FilterEditorMode;
    .param p1, "x1"    # Lcom/oneplus/gallery/editor/FilterType;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/editor/FilterEditorMode;->changeFilterType(Lcom/oneplus/gallery/editor/FilterType;ZZ)V

    return-void
.end method

.method private changeFilterType(Lcom/oneplus/gallery/editor/FilterType;ZZ)V
    .locals 3
    .param p1, "filterType"    # Lcom/oneplus/gallery/editor/FilterType;
    .param p2, "closeFilterControls"    # Z
    .param p3, "forceUpdate"    # Z

    .prologue
    const/4 v2, 0x1

    .line 161
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->isEnter()Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterType:Lcom/oneplus/gallery/editor/FilterType;

    if-ne v0, p1, :cond_2

    if-nez p3, :cond_2

    .line 165
    sget-object v0, Lcom/oneplus/gallery/editor/FilterType;->NORMAL:Lcom/oneplus/gallery/editor/FilterType;

    if-eq p1, v0, :cond_0

    .line 167
    iput-boolean v2, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_IsFilterLevelEnabled:Z

    .line 168
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->updateProgressControls()V

    goto :goto_0

    .line 174
    :cond_2
    iput-object p1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterType:Lcom/oneplus/gallery/editor/FilterType;

    .line 175
    if-eqz p2, :cond_3

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_IsFilterLevelEnabled:Z

    .line 179
    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_ShowTempOriginalPreview:Z

    if-nez v0, :cond_4

    .line 180
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterType:Lcom/oneplus/gallery/editor/FilterType;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterType:Lcom/oneplus/gallery/editor/FilterType;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/editor/FilterEditorMode;->getLastCommitProgressValue(Lcom/oneplus/gallery/editor/FilterType;)F

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/gallery/editor/FilterEditorMode;->setFilterType(Lcom/oneplus/gallery/editor/FilterType;FZ)V

    .line 183
    :cond_4
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/editor/FilterEditorMode;->updateFilterItemSelectedDrawable(Lcom/oneplus/gallery/editor/FilterType;)V

    .line 186
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->updateProgressControls()V

    goto :goto_0
.end method

.method private getCurrentProgress()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_CurrentProgress:Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;

    if-nez v0, :cond_0

    const/16 v0, 0x6e

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_CurrentProgress:Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;

    iget v0, v0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;->progress:I

    goto :goto_0
.end method

.method private getCurrentProgressValue()F
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_CurrentProgress:Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_CurrentProgress:Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;

    iget v0, v0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;->value:F

    goto :goto_0
.end method

.method private getFilterName(Lcom/oneplus/gallery/editor/FilterType;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Lcom/oneplus/gallery/editor/FilterType;

    .prologue
    const/4 v1, 0x0

    .line 207
    if-nez p1, :cond_0

    .line 264
    :goto_0
    return-object v1

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    .line 210
    .local v0, "activity":Lcom/oneplus/gallery/GalleryActivity;
    sget-object v2, Lcom/oneplus/gallery/editor/FilterEditorMode$5;->$SwitchMap$com$oneplus$gallery$editor$FilterType:[I

    invoke-virtual {p1}, Lcom/oneplus/gallery/editor/FilterType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 214
    :pswitch_0
    const v1, 0x7f090045

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 217
    :pswitch_1
    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 220
    :pswitch_2
    const v1, 0x7f090043

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 223
    :pswitch_3
    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 226
    :pswitch_4
    const v1, 0x7f090048

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 229
    :pswitch_5
    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 232
    :pswitch_6
    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 235
    :pswitch_7
    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 238
    :pswitch_8
    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 240
    :pswitch_9
    const v1, 0x7f09003c

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 243
    :pswitch_a
    const v1, 0x7f09003d

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 246
    :pswitch_b
    const v1, 0x7f09003e

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 249
    :pswitch_c
    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 252
    :pswitch_d
    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 255
    :pswitch_e
    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 258
    :pswitch_f
    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 260
    :pswitch_10
    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 262
    :pswitch_11
    const v1, 0x7f09004d

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private getLastCommitProgress(Lcom/oneplus/gallery/editor/FilterType;)I
    .locals 3
    .param p1, "filterType"    # Lcom/oneplus/gallery/editor/FilterType;

    .prologue
    .line 272
    iget-object v1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_LastCommitProgressTable:Ljava/util/Map;

    iget-object v2, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterType:Lcom/oneplus/gallery/editor/FilterType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;

    .line 273
    .local v0, "controlPanelProgress":Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;
    if-nez v0, :cond_0

    const/16 v1, 0x6e

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;->progress:I

    goto :goto_0
.end method

.method private getLastCommitProgressValue(Lcom/oneplus/gallery/editor/FilterType;)F
    .locals 3
    .param p1, "filterType"    # Lcom/oneplus/gallery/editor/FilterType;

    .prologue
    .line 280
    iget-object v1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_LastCommitProgressTable:Ljava/util/Map;

    iget-object v2, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterType:Lcom/oneplus/gallery/editor/FilterType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;

    .line 281
    .local v0, "controlPanelProgress":Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;
    if-nez v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;->value:F

    goto :goto_0
.end method

.method private onControlPanelNegativeClicked()V
    .locals 3

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_ShowTempOriginalPreview:Z

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_NetEaseFilter:Lcom/oneplus/gallery/editor/NetEaseFilter;

    sget-object v1, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_FILTER_LEVEL:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterType:Lcom/oneplus/gallery/editor/FilterType;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/editor/FilterEditorMode;->getLastCommitProgressValue(Lcom/oneplus/gallery/editor/FilterType;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/editor/NetEaseFilter;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->getPhotoEditor()Lcom/oneplus/gallery/editor/PhotoEditor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->refreshPreview(I)V

    .line 296
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_IsFilterLevelEnabled:Z

    .line 297
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->updateProgressControls()V

    .line 298
    return-void
.end method

.method private onControlPanelPositiveClicked()V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_CurrentProgress:Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_LastCommitProgressTable:Ljava/util/Map;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterType:Lcom/oneplus/gallery/editor/FilterType;

    iget-object v2, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_CurrentProgress:Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;

    invoke-virtual {v2}, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;->clone()Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_IsFilterLevelEnabled:Z

    .line 310
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->updateProgressControls()V

    .line 311
    return-void
.end method

.method private onControlPanelProgressChanged(Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;)V
    .locals 3
    .param p1, "progress"    # Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->getCurrentProgress()I

    move-result v0

    iget v1, p1, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;->progress:I

    if-ne v0, v1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iput-object p1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_CurrentProgress:Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;

    .line 325
    iget-boolean v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_ShowTempOriginalPreview:Z

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterType:Lcom/oneplus/gallery/editor/FilterType;

    iget v1, p1, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;->value:F

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/gallery/editor/FilterEditorMode;->setFilterType(Lcom/oneplus/gallery/editor/FilterType;FZ)V

    goto :goto_0
.end method

.method private onFilterThumbnailsReady()V
    .locals 2

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->isSetupUI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->TAG:Ljava/lang/String;

    const-string v1, "onFilterThumbnailsReady() - View is destroyed"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->TAG:Ljava/lang/String;

    const-string v1, "onFilterThumbnailsReady()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery/PhotoEditorFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/PhotoEditorFragment;->setProcessingDialogVisibility(Z)V

    .line 427
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->setupFilterToolbarButtons()V

    goto :goto_0
.end method

.method private setFilterType(Lcom/oneplus/gallery/editor/FilterType;FZ)V
    .locals 4
    .param p1, "filterType"    # Lcom/oneplus/gallery/editor/FilterType;
    .param p2, "level"    # F
    .param p3, "refreshPreview"    # Z

    .prologue
    .line 470
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->TAG:Ljava/lang/String;

    const-string v1, "setFilterType() - Filter: "

    const-string v2, ", level: "

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 473
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_NetEaseFilter:Lcom/oneplus/gallery/editor/NetEaseFilter;

    sget-object v1, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_FILTER_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/gallery/editor/NetEaseFilter;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 474
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_NetEaseFilter:Lcom/oneplus/gallery/editor/NetEaseFilter;

    sget-object v1, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_FILTER_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/editor/NetEaseFilter;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 477
    if-eqz p3, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->getPhotoEditor()Lcom/oneplus/gallery/editor/PhotoEditor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->refreshPreview(I)V

    .line 479
    :cond_0
    return-void
.end method

.method private setWatermarkVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 570
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_WatermarkTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 584
    :goto_0
    return-void

    .line 574
    :cond_0
    if-eqz p1, :cond_1

    .line 576
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_WatermarkTextView:Landroid/widget/TextView;

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 577
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_WatermarkContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_WatermarkTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_WatermarkContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupFilterToolbarButtons()V
    .locals 12

    .prologue
    .line 486
    iget-object v9, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterItemContainer:Landroid/view/ViewGroup;

    if-eqz v9, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-object v9, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterToolBar:Landroid/widget/HorizontalScrollView;

    if-nez v9, :cond_2

    .line 490
    iget-object v9, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->TAG:Ljava/lang/String;

    const-string v10, "setupFilterToolbarButtons() - Photo editor is not ready, skip"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_2
    iget-object v9, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_NetEaseFilter:Lcom/oneplus/gallery/editor/NetEaseFilter;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_NetEaseFilter:Lcom/oneplus/gallery/editor/NetEaseFilter;

    sget-object v10, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v9, v10}, Lcom/oneplus/gallery/editor/NetEaseFilter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->READY:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    if-ne v9, v10, :cond_3

    iget-object v9, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_NetEaseFilter:Lcom/oneplus/gallery/editor/NetEaseFilter;

    sget-object v10, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_IS_THUMBNAILS_CREATED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v9, v10}, Lcom/oneplus/gallery/editor/NetEaseFilter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_4

    .line 497
    :cond_3
    iget-object v9, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->TAG:Ljava/lang/String;

    const-string v10, "setupFilterToolbarButtons() - Net ease filter is not ready, skip"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 502
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    .line 503
    .local v0, "activity":Lcom/oneplus/gallery/GalleryActivity;
    const v9, 0x7f020092

    invoke-virtual {v0, v9}, Lcom/oneplus/gallery/GalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 504
    iget-object v9, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterToolBar:Landroid/widget/HorizontalScrollView;

    const v10, 0x7f060091

    invoke-virtual {v9, v10}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterItemContainer:Landroid/view/ViewGroup;

    .line 505
    sget-object v1, Lcom/oneplus/gallery/editor/FilterEditorMode;->NET_EASE_FILTERS:[Lcom/oneplus/gallery/editor/FilterType;

    .local v1, "arr$":[Lcom/oneplus/gallery/editor/FilterType;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v8, :cond_0

    aget-object v4, v1, v5

    .line 508
    .local v4, "filterType":Lcom/oneplus/gallery/editor/FilterType;
    const v9, 0x7f030019

    const/4 v10, 0x0

    invoke-static {v0, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 509
    .local v6, "itemView":Landroid/view/View;
    const v9, 0x7f060072

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 510
    .local v2, "button":Landroid/widget/ImageButton;
    const v9, 0x7f060073

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 513
    .local v7, "label":Landroid/widget/TextView;
    new-instance v9, Lcom/oneplus/gallery/editor/FilterEditorMode$4;

    invoke-direct {v9, p0, v6, v4}, Lcom/oneplus/gallery/editor/FilterEditorMode$4;-><init>(Lcom/oneplus/gallery/editor/FilterEditorMode;Landroid/view/View;Lcom/oneplus/gallery/editor/FilterType;)V

    invoke-virtual {v2, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_NetEaseFilter:Lcom/oneplus/gallery/editor/NetEaseFilter;

    invoke-virtual {v10, v4}, Lcom/oneplus/gallery/editor/NetEaseFilter;->getThumbnail(Lcom/oneplus/gallery/editor/FilterType;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 526
    .local v3, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 527
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 528
    invoke-direct {p0, v4}, Lcom/oneplus/gallery/editor/FilterEditorMode;->getFilterName(Lcom/oneplus/gallery/editor/FilterType;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v9, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 534
    iget-object v9, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterToolBarItems:Ljava/util/Map;

    new-instance v10, Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;

    iget-object v11, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v10, v2, v7, v3, v11}, Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;-><init>(Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v9, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private setupNetEaseFilter()V
    .locals 3

    .prologue
    .line 543
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_NetEaseFilter:Lcom/oneplus/gallery/editor/NetEaseFilter;

    if-eqz v0, :cond_0

    .line 550
    :goto_0
    return-void

    .line 547
    :cond_0
    new-instance v0, Lcom/oneplus/gallery/editor/NetEaseFilter;

    invoke-direct {v0}, Lcom/oneplus/gallery/editor/NetEaseFilter;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_NetEaseFilter:Lcom/oneplus/gallery/editor/NetEaseFilter;

    .line 548
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_NetEaseFilter:Lcom/oneplus/gallery/editor/NetEaseFilter;

    sget-object v1, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_IS_THUMBNAILS_CREATED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_OnFilterThumbnailsReadyCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/editor/NetEaseFilter;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 549
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->getPhotoEditor()Lcom/oneplus/gallery/editor/PhotoEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_NetEaseFilter:Lcom/oneplus/gallery/editor/NetEaseFilter;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->addFilter(Lcom/oneplus/gallery/editor/PhotoEditorFilter;)V

    goto :goto_0
.end method

.method private updateFilterItemPosition(Landroid/view/View;Z)V
    .locals 7
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "forceToCenter"    # Z

    .prologue
    const/4 v6, 0x0

    .line 606
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->isEnter()Z

    move-result v4

    if-nez v4, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    if-eqz p1, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v4

    sget-object v5, Lcom/oneplus/gallery/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/ScreenSize;

    .line 613
    .local v1, "screenSize":Lcom/oneplus/base/ScreenSize;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v2, v4, v5

    .line 614
    .local v2, "scrollX":I
    if-eqz p2, :cond_2

    .line 616
    iget-object v4, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterToolBar:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v2, v6}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 620
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterToolBar:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 621
    .local v0, "containerScrollX":I
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/gallery/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0500e8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 622
    .local v3, "shadowWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    if-ge v0, v4, :cond_3

    add-int v4, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 625
    iget-object v4, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterToolBar:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v2, v6}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 627
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    if-le v4, v0, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    sub-int/2addr v4, v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 630
    iget-object v4, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterToolBar:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v2, v6}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method

.method private updateFilterItemSelectedDrawable(Lcom/oneplus/gallery/editor/FilterType;)V
    .locals 4
    .param p1, "newFilterType"    # Lcom/oneplus/gallery/editor/FilterType;

    .prologue
    .line 640
    iget-object v2, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterToolBarItems:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 642
    iget-object v2, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->TAG:Ljava/lang/String;

    const-string v3, "updateFilterItemSelectedDrawable() - Toolbar is not ready"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterToolBarItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;

    .line 646
    .local v1, "item":Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;->setSelected(Z)V

    goto :goto_1

    .line 647
    .end local v1    # "item":Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;
    :cond_2
    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NORMAL:Lcom/oneplus/gallery/editor/FilterType;

    if-eq p1, v2, :cond_0

    .line 649
    iget-object v2, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterToolBarItems:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;

    .line 650
    .restart local v1    # "item":Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;
    if-eqz v1, :cond_0

    .line 651
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;->setSelected(Z)V

    goto :goto_0
.end method

.method private updateProgressControls()V
    .locals 5

    .prologue
    .line 591
    iget-object v1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterType:Lcom/oneplus/gallery/editor/FilterType;

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NORMAL:Lcom/oneplus/gallery/editor/FilterType;

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_IsFilterLevelEnabled:Z

    if-eqz v1, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery/PhotoEditorFragment;

    move-result-object v0

    .line 594
    .local v0, "fragment":Lcom/oneplus/gallery/PhotoEditorFragment;
    iget-object v1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_ProgressControlsHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 595
    iget-object v1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterType:Lcom/oneplus/gallery/editor/FilterType;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/editor/FilterEditorMode;->getLastCommitProgress(Lcom/oneplus/gallery/editor/FilterType;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterType:Lcom/oneplus/gallery/editor/FilterType;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/editor/FilterEditorMode;->getFilterName(Lcom/oneplus/gallery/editor/FilterType;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;->POSITIVE_ONLY:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    iget-object v4, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_ControlPanelListener:Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oneplus/gallery/PhotoEditorFragment;->showControlPanel(ILjava/lang/String;Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelListener;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_ProgressControlsHandle:Lcom/oneplus/base/Handle;

    .line 599
    .end local v0    # "fragment":Lcom/oneplus/gallery/PhotoEditorFragment;
    :goto_0
    return-void

    .line 598
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_ProgressControlsHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_ProgressControlsHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method


# virtual methods
.method public cancelTempOriginalPreview()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->isEnter()Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    :goto_0
    return v0

    .line 145
    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_ShowTempOriginalPreview:Z

    .line 146
    iget-object v2, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterType:Lcom/oneplus/gallery/editor/FilterType;

    sget-object v3, Lcom/oneplus/gallery/editor/FilterType;->NORMAL:Lcom/oneplus/gallery/editor/FilterType;

    if-eq v2, v3, :cond_1

    .line 148
    iget-boolean v2, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_IsFilterLevelEnabled:Z

    if-eqz v2, :cond_2

    .line 149
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterType:Lcom/oneplus/gallery/editor/FilterType;

    invoke-direct {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->getCurrentProgressValue()F

    move-result v2

    invoke-direct {p0, v0, v2, v1}, Lcom/oneplus/gallery/editor/FilterEditorMode;->setFilterType(Lcom/oneplus/gallery/editor/FilterType;FZ)V

    :cond_1
    :goto_1
    move v0, v1

    .line 153
    goto :goto_0

    .line 151
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterType:Lcom/oneplus/gallery/editor/FilterType;

    invoke-direct {p0, v2, v0, v1}, Lcom/oneplus/gallery/editor/FilterEditorMode;->changeFilterType(Lcom/oneplus/gallery/editor/FilterType;ZZ)V

    goto :goto_1
.end method

.method protected onCreateUI(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery/PhotoEditorFragment;

    move-result-object v1

    .line 336
    .local v1, "fragment":Lcom/oneplus/gallery/PhotoEditorFragment;
    sget-object v2, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_CLIPPING_ONLY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/PhotoEditorFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    const/4 v0, 0x0

    .line 364
    :goto_0
    return-object v0

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v3

    const v4, 0x7f030021

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v3, v4, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 343
    const v2, 0x7f06008f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 344
    .local v0, "baseView":Landroid/view/View;
    const v2, 0x7f060090

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HorizontalScrollView;

    iput-object v2, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterToolBar:Landroid/widget/HorizontalScrollView;

    .line 345
    const v2, 0x7f060092

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_WatermarkContainer:Landroid/view/View;

    .line 346
    iget-object v2, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_WatermarkContainer:Landroid/view/View;

    const v3, 0x7f060093

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_WatermarkTextView:Landroid/widget/TextView;

    .line 349
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->setupNetEaseFilter()V

    .line 352
    iget-object v2, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_NetEaseFilter:Lcom/oneplus/gallery/editor/NetEaseFilter;

    sget-object v3, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_IS_THUMBNAILS_CREATED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/editor/NetEaseFilter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->setupFilterToolbarButtons()V

    .line 356
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->isEnter()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 357
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/editor/FilterEditorMode;->setWatermarkVisibility(Z)V

    .line 360
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->updateProgressControls()V

    .line 361
    iget-object v2, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterType:Lcom/oneplus/gallery/editor/FilterType;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/editor/FilterEditorMode;->updateFilterItemSelectedDrawable(Lcom/oneplus/gallery/editor/FilterType;)V

    goto :goto_0
.end method

.method protected onDestroyUI()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_ProgressControlsHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_ProgressControlsHandle:Lcom/oneplus/base/Handle;

    .line 376
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterToolBarItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterItemContainer:Landroid/view/ViewGroup;

    .line 380
    return-void
.end method

.method protected onEnter(I)Z
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x1

    .line 388
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_NetEaseFilter:Lcom/oneplus/gallery/editor/NetEaseFilter;

    sget-object v1, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_IS_THUMBNAILS_CREATED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/NetEaseFilter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->TAG:Ljava/lang/String;

    const-string v1, "onEnter() - Wait for filter ready"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery/PhotoEditorFragment;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/PhotoEditorFragment;->setProcessingDialogVisibility(Z)V

    .line 395
    :cond_0
    invoke-direct {p0, v2}, Lcom/oneplus/gallery/editor/FilterEditorMode;->setWatermarkVisibility(Z)V

    .line 398
    return v2
.end method

.method protected onExit(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 407
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->setWatermarkVisibility(Z)V

    .line 408
    return-void
.end method

.method protected onFragmentResuming()V
    .locals 4

    .prologue
    .line 436
    invoke-super {p0}, Lcom/oneplus/gallery/editor/BaseEditorMode;->onFragmentResuming()V

    .line 439
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery/PhotoEditorFragment;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery/editor/FilterEditorMode$3;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/editor/FilterEditorMode$3;-><init>(Lcom/oneplus/gallery/editor/FilterEditorMode;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    .line 447
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_NetEaseFilter:Lcom/oneplus/gallery/editor/NetEaseFilter;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_NetEaseFilter:Lcom/oneplus/gallery/editor/NetEaseFilter;

    invoke-virtual {v0}, Lcom/oneplus/gallery/editor/NetEaseFilter;->release()V

    .line 459
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_CurrentFilterItemView:Landroid/view/View;

    .line 460
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterToolBarItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 463
    invoke-super {p0}, Lcom/oneplus/gallery/editor/BaseEditorMode;->onRelease()V

    .line 464
    return-void
.end method

.method public showTempOriginalPreview()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 557
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->isEnter()Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    const/4 v0, 0x0

    .line 562
    :goto_0
    return v0

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_FilterType:Lcom/oneplus/gallery/editor/FilterType;

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NORMAL:Lcom/oneplus/gallery/editor/FilterType;

    if-eq v1, v2, :cond_1

    .line 560
    sget-object v1, Lcom/oneplus/gallery/editor/FilterType;->NORMAL:Lcom/oneplus/gallery/editor/FilterType;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/oneplus/gallery/editor/FilterEditorMode;->setFilterType(Lcom/oneplus/gallery/editor/FilterType;FZ)V

    .line 561
    :cond_1
    iput-boolean v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode;->m_ShowTempOriginalPreview:Z

    goto :goto_0
.end method
