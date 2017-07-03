.class public Lcom/oneplus/gallery/PhotoEditorFragment;
.super Lcom/oneplus/gallery/GalleryFragment;
.source "PhotoEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/PhotoEditorFragment$30;,
        Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;,
        Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;,
        Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelListener;
    }
.end annotation


# static fields
.field private static final DURATION_HIDE_STATUS_BAR_DELAY:J = 0xbb8L

.field private static final DURATION_UI_VISIBILITY_ANIMATION:J = 0x96L

.field public static final DURATION_UPDATE_PREVIEW_IMG_BOUNDS_DELAY:J = 0x64L

.field public static final DURATION_UPDATE_PREVIEW_IMG_BOUNDS_DELAY_INITIAL:J = 0x190L

.field public static final FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

.field public static final FLAG_GESTURE_DOUBLE_TAP_SCALE:I

.field public static final FLAG_GESTURE_MULTIPLE_FINGERS_SCALE:I

.field public static final FLAG_GESTURE_MULTIPLE_FINGERS_SCROLL:I

.field public static final FLAG_GESTURE_ONE_FINGER_SCROLL:I

.field private static final MSG_HIDE_STATUS_BAR:I = 0x2710

.field private static final MSG_SHOW_CONTROL_UI:I = 0x2711

.field private static final MSG_UPDATE_PREVIEW_IMAGE_BOUNDS:I = 0x271a

.field public static final PROP_CLIPPING_ONLY:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_CREATE_MODIFIED_THUMB:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_EMBEDDED_THUMB_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FIXED_CROP_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery/crop/CropMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_PREVIEW_IMAGE_CONTAINER_ANIMATING:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MEDIA:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery/media/PhotoMedia;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_OUTPUT_FORMAT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_OUTPUT_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PREVIEW_IMAGE_BOUNDS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEEK_BAR_CENTER_EXPAND:I = 0x5

.field public static final SEEK_BAR_PROGRESS_CENTER:I = 0x37

.field public static final SEEK_BAR_PROGRESS_CENTER_MAX:I = 0x3c

.field public static final SEEK_BAR_PROGRESS_CENTER_MIN:I = 0x32

.field public static final SEEK_BAR_PROGRESS_MAX:I = 0x6e

.field private static final THUMB_MAX_HEIGHT:I = 0x2d0

.field private static final THUMB_MAX_WIDTH:I = 0x2d0


# instance fields
.field INITIALIZER:Ljava/lang/Object;

.field private m_BackgroundHeader:Landroid/view/View;

.field private m_ColorFilterButton:Landroid/widget/ImageButton;

.field private m_ControlPanel:Landroid/view/View;

.field private m_ControlPanelHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_ControlPanelLabel:Landroid/widget/TextView;

.field private m_ControlPanelNegativeButton:Landroid/widget/ImageButton;

.field private m_ControlPanelPositiveButton:Landroid/widget/ImageButton;

.field private m_ControlPanelSeekBar:Landroid/widget/SeekBar;

.field private m_ControlPanelSeekBarDrawable:Lcom/oneplus/gallery/drawable/ProgressDrawable;

.field private m_ControlPanelVisibilityState:Lcom/oneplus/gallery/editor/ViewVisibilityState;

.field private m_ControlUIContainer:Landroid/view/View;

.field private m_CropButton:Landroid/widget/ImageButton;

.field private m_DrawingButton:Landroid/widget/ImageButton;

.field private m_EditorMode:Lcom/oneplus/gallery/editor/EditorMode;

.field private m_EditorModeContainer:Landroid/view/View;

.field private m_EditorModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/editor/EditorMode;",
            ">;"
        }
    .end annotation
.end field

.field private m_ExitAfterSaving:Z

.field private m_FilterButton:Landroid/widget/ImageButton;

.field private m_IsInitialEditorMode:Z

.field private m_IsModified:Z

.field private final m_IsNavigationBarVisibleCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsProgressControlsVisible:Z

.field private m_IsViewCreated:Z

.field private m_NavBarHandle:Lcom/oneplus/base/Handle;

.field private m_OnNegativeButtonClickListener:Landroid/view/View$OnClickListener;

.field private m_OnPositiveButtonClickListener:Landroid/view/View$OnClickListener;

.field private m_OnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

.field private m_PreviewImageContainer:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

.field private m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

.field private m_PreviewImageViewLocation:[I

.field private m_PrimaryToolBar:Landroid/view/View;

.field private m_ProcessingDialog:Lcom/oneplus/gallery/ui/ProcessingDialog;

.field private m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

.field private m_ResultIntent:Landroid/content/Intent;

.field private m_RotateButton:Landroid/widget/ImageButton;

.field private m_SaveButton:Landroid/view/MenuItem;

.field private m_SaveModificationWhenReady:Z

.field private m_ShowTempOriginalPreview:Z

.field private m_StatusBarHandle:Lcom/oneplus/base/Handle;

.field private final m_StatusBarVisibilityChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_TitleBar:Landroid/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 78
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "Media"

    const-class v2, Lcom/oneplus/gallery/media/PhotoMedia;

    const-class v3, Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    .line 84
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string v7, "Clipping"

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_CLIPPING_ONLY:Lcom/oneplus/base/PropertyKey;

    .line 88
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string v7, "CreateModifiedThumb"

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_CREATE_MODIFIED_THUMB:Lcom/oneplus/base/PropertyKey;

    .line 92
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "EmbeddedThumbSize"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_EMBEDDED_THUMB_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 96
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "FixedCropMode"

    const-class v2, Lcom/oneplus/gallery/crop/CropMode;

    const-class v3, Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_FIXED_CROP_MODE:Lcom/oneplus/base/PropertyKey;

    .line 100
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsPreviewImageContainerAnimating"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_IS_PREVIEW_IMAGE_CONTAINER_ANIMATING:Lcom/oneplus/base/PropertyKey;

    .line 104
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "OutputFormat"

    const-class v2, Landroid/graphics/Bitmap$CompressFormat;

    const-class v3, Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_OUTPUT_FORMAT:Lcom/oneplus/base/PropertyKey;

    .line 108
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "OutputSize"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_OUTPUT_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 112
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "OutputUri"

    const-class v2, Landroid/net/Uri;

    const-class v3, Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    .line 116
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PreviewImageBounds"

    const-class v2, Landroid/graphics/Rect;

    const-class v3, Lcom/oneplus/gallery/PhotoEditorFragment;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_PREVIEW_IMAGE_BOUNDS:Lcom/oneplus/base/PropertyKey;

    .line 122
    new-instance v0, Lcom/oneplus/base/BitFlagsGroup;

    const-class v1, Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-direct {v0, v1}, Lcom/oneplus/base/BitFlagsGroup;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    .line 126
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery/PhotoEditorFragment;->FLAG_GESTURE_ONE_FINGER_SCROLL:I

    .line 130
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery/PhotoEditorFragment;->FLAG_GESTURE_MULTIPLE_FINGERS_SCALE:I

    .line 134
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery/PhotoEditorFragment;->FLAG_GESTURE_MULTIPLE_FINGERS_SCROLL:I

    .line 138
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery/PhotoEditorFragment;->FLAG_GESTURE_DOUBLE_TAP_SCALE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryFragment;-><init>()V

    .line 144
    new-instance v0, Lcom/oneplus/gallery/PhotoEditorFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$1;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->INITIALIZER:Ljava/lang/Object;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;

    .line 182
    sget-object v0, Lcom/oneplus/gallery/editor/ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/editor/ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelVisibilityState:Lcom/oneplus/gallery/editor/ViewVisibilityState;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorModes:Ljava/util/List;

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_IsInitialEditorMode:Z

    .line 200
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageViewLocation:[I

    .line 214
    new-instance v0, Lcom/oneplus/gallery/PhotoEditorFragment$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$2;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_IsNavigationBarVisibleCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 222
    new-instance v0, Lcom/oneplus/gallery/PhotoEditorFragment$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$3;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_StatusBarVisibilityChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 233
    new-instance v0, Lcom/oneplus/gallery/PhotoEditorFragment$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$4;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_OnNegativeButtonClickListener:Landroid/view/View$OnClickListener;

    .line 241
    new-instance v0, Lcom/oneplus/gallery/PhotoEditorFragment$5;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$5;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_OnPositiveButtonClickListener:Landroid/view/View$OnClickListener;

    .line 249
    new-instance v0, Lcom/oneplus/gallery/PhotoEditorFragment$6;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$6;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_OnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 353
    new-instance v0, Lcom/oneplus/gallery/editor/PhotoEditor;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    .line 354
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/gallery/PhotoEditorFragment$7;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$7;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/editor/PhotoEditor;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 362
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_PREVIEW_DRAWABLE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/gallery/PhotoEditorFragment$8;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$8;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/editor/PhotoEditor;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 370
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/gallery/PhotoEditorFragment$9;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$9;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/editor/PhotoEditor;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 378
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/gallery/PhotoEditorFragment$10;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$10;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/editor/PhotoEditor;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 386
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/gallery/PhotoEditorFragment$11;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$11;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/editor/PhotoEditor;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 396
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorModes:Ljava/util/List;

    new-instance v1, Lcom/oneplus/gallery/editor/RotateEditorMode;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/editor/RotateEditorMode;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorModes:Ljava/util/List;

    new-instance v1, Lcom/oneplus/gallery/editor/CropEditorMode;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/editor/CropEditorMode;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorModes:Ljava/util/List;

    new-instance v1, Lcom/oneplus/gallery/editor/FilterEditorMode;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/editor/FilterEditorMode;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorModes:Ljava/util/List;

    new-instance v1, Lcom/oneplus/gallery/editor/ColorFilterEditorMode;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/editor/ColorFilterEditorMode;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorModes:Ljava/util/List;

    new-instance v1, Lcom/oneplus/gallery/editor/DrawingEditorMode;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/PhotoEditorFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/PhotoEditorFragment;->onStatusBarVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/PhotoEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->onNegativeButtonClick()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery/PhotoEditorFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/PhotoEditorFragment;->onEditorOrientationChanged(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery/PhotoEditorFragment;Landroid/graphics/RectF;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/PhotoEditorFragment;->onEditorClipRectChanged(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/gallery/PhotoEditorFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getSaveTitleRes()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/oneplus/gallery/PhotoEditorFragment;ZZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/PhotoEditorFragment;->save(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/gallery/PhotoEditorFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/gallery/PhotoEditorFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/PhotoEditorFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/oneplus/gallery/PhotoEditorFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/PhotoEditorFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/oneplus/gallery/PhotoEditorFragment;)[I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageViewLocation:[I

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oneplus/gallery/PhotoEditorFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/PhotoEditorFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/oneplus/gallery/PhotoEditorFragment;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/PhotoEditorFragment;->onPreviewImageViewTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/PhotoEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->onPositiveButtonClick()V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/gallery/PhotoEditorFragment;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_SaveButton:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/oneplus/gallery/PhotoEditorFragment;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/PhotoEditorFragment;->changeEditorMode(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/oneplus/gallery/PhotoEditorFragment;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ResultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/oneplus/gallery/PhotoEditorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/oneplus/gallery/PhotoEditorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/oneplus/gallery/PhotoEditorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/oneplus/gallery/PhotoEditorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/oneplus/gallery/PhotoEditorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/oneplus/gallery/PhotoEditorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/oneplus/gallery/PhotoEditorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/PhotoEditorFragment;Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;
    .param p1, "x1"    # Landroid/widget/SeekBar;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/PhotoEditorFragment;->onSeekBarProgressChanged(Landroid/widget/SeekBar;IZ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/oneplus/gallery/PhotoEditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ExitAfterSaving:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/oneplus/gallery/PhotoEditorFragment;Lcom/oneplus/gallery/editor/ViewVisibilityState;)Lcom/oneplus/gallery/editor/ViewVisibilityState;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/editor/ViewVisibilityState;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelVisibilityState:Lcom/oneplus/gallery/editor/ViewVisibilityState;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/oneplus/gallery/PhotoEditorFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/gallery/PhotoEditorFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/gallery/PhotoEditorFragment;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/PhotoEditorFragment;->setProgressControlsVisibility(ZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/gallery/PhotoEditorFragment;Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/PhotoEditorFragment;->showControlPanel(Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/gallery/PhotoEditorFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/PhotoEditorFragment;->onEditorModificationStateChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/gallery/PhotoEditorFragment;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/PhotoEditorFragment;->onEditorPreviewChanged(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/gallery/PhotoEditorFragment;Lcom/oneplus/gallery/editor/MediaEditor$State;Lcom/oneplus/gallery/editor/MediaEditor$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/PhotoEditorFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/editor/MediaEditor$State;
    .param p2, "x2"    # Lcom/oneplus/gallery/editor/MediaEditor$State;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/PhotoEditorFragment;->onEditorStateChanged(Lcom/oneplus/gallery/editor/MediaEditor$State;Lcom/oneplus/gallery/editor/MediaEditor$State;)V

    return-void
.end method

.method private canAlwaysSave()Z
    .locals 1

    .prologue
    .line 407
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelTempOriginalPreview()V
    .locals 2

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ShowTempOriginalPreview:Z

    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 417
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ShowTempOriginalPreview:Z

    .line 420
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery/editor/EditorMode;

    invoke-interface {v0}, Lcom/oneplus/gallery/editor/EditorMode;->cancelTempOriginalPreview()Z

    .line 423
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_IsModified:Z

    .line 424
    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->updateSaveButtonState()V

    goto :goto_0
.end method

.method private changeEditorMode(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/oneplus/gallery/editor/EditorMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 431
    .local p1, "editorMode":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/oneplus/gallery/editor/EditorMode;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->changeEditorMode(Ljava/lang/Class;Z)V

    .line 432
    return-void
.end method

.method private changeEditorMode(Ljava/lang/Class;Z)V
    .locals 10
    .param p2, "disableLayoutAnimation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/oneplus/gallery/editor/EditorMode;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "editorMode":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/oneplus/gallery/editor/EditorMode;>;"
    const/4 v7, 0x0

    .line 436
    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->cancelTempOriginalPreview()V

    .line 439
    const/4 v5, 0x0

    .line 440
    .local v5, "newMode":Lcom/oneplus/gallery/editor/EditorMode;
    iget-object v8, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorModes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery/editor/EditorMode;

    .line 442
    .local v4, "mode":Lcom/oneplus/gallery/editor/EditorMode;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 444
    move-object v5, v4

    .line 448
    .end local v4    # "mode":Lcom/oneplus/gallery/editor/EditorMode;
    :cond_1
    if-nez v5, :cond_2

    .line 450
    iget-object v7, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changeEditorMode() - Invalid editor mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :goto_0
    return-void

    .line 455
    :cond_2
    iget-object v8, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery/editor/EditorMode;

    if-eq v5, v8, :cond_6

    .line 458
    iget-object v6, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery/editor/EditorMode;

    .line 459
    .local v6, "oldMode":Lcom/oneplus/gallery/editor/EditorMode;
    iput-object v5, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery/editor/EditorMode;

    .line 462
    if-eqz v6, :cond_3

    .line 463
    invoke-interface {v6, v7}, Lcom/oneplus/gallery/editor/EditorMode;->exit(I)V

    .line 466
    :cond_3
    iget-boolean v8, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_IsInitialEditorMode:Z

    if-eqz v8, :cond_4

    sget v0, Lcom/oneplus/gallery/editor/EditorMode;->FLAG_IS_INITIAL_EDITOR_MODE:I

    .line 467
    .local v0, "flags":I
    :goto_1
    iget-object v8, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery/editor/EditorMode;

    invoke-interface {v8, v0}, Lcom/oneplus/gallery/editor/EditorMode;->enter(I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 469
    iget-object v7, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changeEditorMode() - Fail to change to editor mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery/editor/EditorMode;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "flags":I
    :cond_4
    move v0, v7

    .line 466
    goto :goto_1

    .line 474
    .restart local v0    # "flags":I
    :cond_5
    iget-object v8, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    if-eqz v8, :cond_6

    .line 475
    iget-object v8, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    sget-object v9, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v8, v9}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 479
    .end local v0    # "flags":I
    .end local v6    # "oldMode":Lcom/oneplus/gallery/editor/EditorMode;
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->updateToolbarButtonStatus()V

    .line 482
    iget-boolean v8, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_IsInitialEditorMode:Z

    if-nez v8, :cond_7

    .line 483
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/PhotoEditorFragment;->updatePreviewImageBounds(Z)V

    goto :goto_0

    .line 486
    :cond_7
    iput-boolean v7, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_IsInitialEditorMode:Z

    .line 487
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v1

    .line 488
    .local v1, "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    if-nez v1, :cond_8

    move v3, v7

    .line 489
    .local v3, "isServiceMode":Z
    :goto_2
    if-nez v3, :cond_9

    .line 490
    const-wide/16 v8, 0x190

    invoke-direct {p0, p2, v8, v9}, Lcom/oneplus/gallery/PhotoEditorFragment;->updatePreviewImageBounds(ZJ)V

    goto :goto_0

    .line 488
    .end local v3    # "isServiceMode":Z
    :cond_8
    invoke-virtual {v1}, Lcom/oneplus/gallery/GalleryActivity;->isServiceMode()Z

    move-result v3

    goto :goto_2

    .line 493
    .restart local v3    # "isServiceMode":Z
    :cond_9
    const/16 v7, 0x271a

    invoke-static {p0, v7}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 494
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/oneplus/gallery/PhotoEditorFragment;->updatePreviewImageBounds(Z)V

    goto :goto_0
.end method

.method private getSaveTitleRes()I
    .locals 1

    .prologue
    .line 627
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f09000e

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f090010

    goto :goto_0
.end method

.method private onEditorClipRectChanged(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 917
    return-void
.end method

.method private onEditorModificationStateChanged(Z)V
    .locals 1
    .param p1, "isModified"    # Z

    .prologue
    .line 923
    iget-boolean v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ShowTempOriginalPreview:Z

    if-eqz v0, :cond_0

    .line 927
    :goto_0
    return-void

    .line 925
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_IsModified:Z

    .line 926
    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->updateSaveButtonState()V

    goto :goto_0
.end method

.method private onEditorOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 933
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    if-nez v0, :cond_0

    .line 936
    :goto_0
    return-void

    .line 935
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->updatePreviewImageBounds(Z)V

    goto :goto_0
.end method

.method private onEditorPreviewChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "preview"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 942
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 944
    :cond_0
    return-void
.end method

.method private onEditorStateChanged(Lcom/oneplus/gallery/editor/MediaEditor$State;Lcom/oneplus/gallery/editor/MediaEditor$State;)V
    .locals 12
    .param p1, "prevState"    # Lcom/oneplus/gallery/editor/MediaEditor$State;
    .param p2, "state"    # Lcom/oneplus/gallery/editor/MediaEditor$State;

    .prologue
    .line 951
    sget-object v9, Lcom/oneplus/gallery/PhotoEditorFragment$30;->$SwitchMap$com$oneplus$gallery$editor$MediaEditor$State:[I

    invoke-virtual {p2}, Lcom/oneplus/gallery/editor/MediaEditor$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1135
    :cond_0
    :goto_0
    return-void

    .line 956
    :pswitch_0
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery/PhotoEditorFragment;->setProcessingDialogVisibility(Z)V

    goto :goto_0

    .line 965
    :pswitch_1
    sget-object v9, Lcom/oneplus/gallery/editor/MediaEditor$State;->PROCESSING_PREVIEW:Lcom/oneplus/gallery/editor/MediaEditor$State;

    if-eq p1, v9, :cond_1

    sget-object v9, Lcom/oneplus/gallery/editor/MediaEditor$State;->PROCESSING:Lcom/oneplus/gallery/editor/MediaEditor$State;

    if-ne p1, v9, :cond_2

    :cond_1
    iget-boolean v9, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ExitAfterSaving:Z

    if-nez v9, :cond_2

    .line 966
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery/PhotoEditorFragment;->setProcessingDialogVisibility(Z)V

    .line 969
    :cond_2
    iget-boolean v9, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_SaveModificationWhenReady:Z

    if-eqz v9, :cond_3

    .line 971
    iget-object v9, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v10, "onEditorStateChanged() - Start saving modification"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_SaveModificationWhenReady:Z

    .line 973
    const/4 v9, 0x1

    iget-boolean v10, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ExitAfterSaving:Z

    invoke-direct {p0, v9, v10}, Lcom/oneplus/gallery/PhotoEditorFragment;->save(ZZ)Z

    goto :goto_0

    .line 978
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    .line 979
    .local v0, "activity":Lcom/oneplus/gallery/GalleryActivity;
    if-nez v0, :cond_4

    .line 981
    iget-object v9, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v10, "onEditorStateChanged() - No activity"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 986
    :cond_4
    sget-object v9, Lcom/oneplus/gallery/editor/MediaEditor$State;->PREPARING:Lcom/oneplus/gallery/editor/MediaEditor$State;

    if-ne p1, v9, :cond_5

    sget-object v9, Lcom/oneplus/gallery/editor/MediaEditor$State;->ERROR:Lcom/oneplus/gallery/editor/MediaEditor$State;

    if-ne p2, v9, :cond_5

    .line 988
    iget-object v9, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v10, "onEditorStateChanged() - Cannot edit photo"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const v9, 0x7f090038

    invoke-virtual {v0, v9}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 990
    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryActivity;->finish()V

    goto :goto_0

    .line 995
    :cond_5
    sget-object v9, Lcom/oneplus/gallery/editor/MediaEditor$State;->PROCESSING:Lcom/oneplus/gallery/editor/MediaEditor$State;

    if-ne p1, v9, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->isDetached()Z

    move-result v9

    if-nez v9, :cond_0

    .line 998
    iget-object v9, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v10, Lcom/oneplus/gallery/editor/MediaEditor;->PROP_MEDIA_SAVING_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v9, v10}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;

    .line 999
    .local v5, "savingState":Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;
    sget-object v9, Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;->SUCCESS:Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;

    if-eq v5, v9, :cond_6

    .line 1001
    iget-object v9, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onEditorStateChanged() - savingState : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    sget-object v9, Lcom/oneplus/gallery/PhotoEditorFragment$30;->$SwitchMap$com$oneplus$gallery$editor$MediaEditor$MediaSavingState:[I

    invoke-virtual {v5}, Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    .line 1013
    :goto_1
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery/PhotoEditorFragment;->setProcessingDialogVisibility(Z)V

    .line 1015
    iget-boolean v9, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ExitAfterSaving:Z

    if-nez v9, :cond_0

    .line 1020
    :cond_6
    sget-object v9, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_EMBEDDED_THUMB_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery/PhotoEditorFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 1021
    .local v3, "embeddedThumbSize":Landroid/util/Size;
    iget-object v9, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v10, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_MODIFIED_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v9, v10}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery/media/Media;

    .line 1022
    .local v4, "modifiedMedia":Lcom/oneplus/gallery/media/Media;
    if-nez v4, :cond_7

    .line 1023
    iget-object v9, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v10, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v9, v10}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "modifiedMedia":Lcom/oneplus/gallery/media/Media;
    check-cast v4, Lcom/oneplus/gallery/media/Media;

    .line 1026
    .restart local v4    # "modifiedMedia":Lcom/oneplus/gallery/media/Media;
    :cond_7
    iget-object v9, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v10, "onEditorStateChanged() - Finish activity, media : "

    invoke-static {v9, v10, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1027
    if-eqz v4, :cond_a

    .line 1029
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    iput-object v9, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ResultIntent:Landroid/content/Intent;

    .line 1030
    iget-object v9, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ResultIntent:Landroid/content/Intent;

    invoke-interface {v4}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v10

    invoke-interface {v4}, Lcom/oneplus/gallery/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1031
    const/4 v9, -0x1

    iget-object v10, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ResultIntent:Landroid/content/Intent;

    invoke-virtual {v0, v9, v10}, Lcom/oneplus/gallery/GalleryActivity;->setResult(ILandroid/content/Intent;)V

    .line 1034
    iget-object v9, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v10, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_AUTO_SELECT_OUTPUT_PATH:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v9, v10}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1036
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f09000f

    invoke-virtual {v0, v10}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1037
    .local v8, "toastStr":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-static {v0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 1038
    iget-object v9, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v10, "onEditorStateChanged() - OTG case, save file to Pictures folder"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    .end local v8    # "toastStr":Ljava/lang/String;
    :cond_8
    :goto_2
    sget-object v9, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_CREATE_MODIFIED_THUMB:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery/PhotoEditorFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_9

    if-eqz v3, :cond_e

    .line 1058
    :cond_9
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v9

    const-class v10, Lcom/oneplus/gallery/media/ThumbnailImageManager;

    invoke-virtual {v9, v10}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery/media/ThumbnailImageManager;

    .line 1059
    .local v7, "thumbnailImageManager":Lcom/oneplus/gallery/media/ThumbnailImageManager;
    if-eqz v7, :cond_0

    .line 1061
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v6

    .line 1062
    .local v6, "thumbnailActivateHandle":Lcom/oneplus/base/Handle;
    const/4 v9, 0x0

    invoke-interface {v7, v4, v9}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->invalidateThumbnailImages(Lcom/oneplus/gallery/media/Media;I)V

    .line 1063
    const/4 v2, 0x3

    .line 1064
    .local v2, "decodeFlags":I
    new-instance v9, Lcom/oneplus/gallery/PhotoEditorFragment$24;

    invoke-direct {v9, p0, v3, v6, v0}, Lcom/oneplus/gallery/PhotoEditorFragment$24;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;Landroid/util/Size;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/GalleryActivity;)V

    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-interface {v7, v4, v2, v9, v10}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->decodeThumbnailImage(Lcom/oneplus/gallery/media/Media;ILcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 1005
    .end local v2    # "decodeFlags":I
    .end local v3    # "embeddedThumbSize":Landroid/util/Size;
    .end local v4    # "modifiedMedia":Lcom/oneplus/gallery/media/Media;
    .end local v6    # "thumbnailActivateHandle":Lcom/oneplus/base/Handle;
    .end local v7    # "thumbnailImageManager":Lcom/oneplus/gallery/media/ThumbnailImageManager;
    :pswitch_2
    const v9, 0x7f090015

    invoke-virtual {v0, v9}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1008
    :pswitch_3
    const v9, 0x7f09008a

    invoke-virtual {v0, v9}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1043
    .restart local v3    # "embeddedThumbSize":Landroid/util/Size;
    .restart local v4    # "modifiedMedia":Lcom/oneplus/gallery/media/Media;
    :cond_a
    iget-object v9, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v10, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v9, v10}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1044
    .local v1, "contentUri":Landroid/net/Uri;
    if-nez v1, :cond_b

    if-eqz v3, :cond_d

    .line 1046
    :cond_b
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    iput-object v9, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ResultIntent:Landroid/content/Intent;

    .line 1047
    if-eqz v1, :cond_c

    .line 1048
    iget-object v9, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ResultIntent:Landroid/content/Intent;

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1049
    :cond_c
    const/4 v9, -0x1

    iget-object v10, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ResultIntent:Landroid/content/Intent;

    invoke-virtual {v0, v9, v10}, Lcom/oneplus/gallery/GalleryActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_2

    .line 1052
    :cond_d
    const/4 v9, -0x1

    invoke-virtual {v0, v9}, Lcom/oneplus/gallery/GalleryActivity;->setResult(I)V

    goto :goto_2

    .line 1125
    .end local v1    # "contentUri":Landroid/net/Uri;
    :cond_e
    iget-boolean v9, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ExitAfterSaving:Z

    if-eqz v9, :cond_0

    .line 1127
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery/PhotoEditorFragment;->setProcessingDialogVisibility(Z)V

    .line 1128
    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryActivity;->finish()V

    goto/16 :goto_0

    .line 951
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1002
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onNegativeButtonClick()V
    .locals 2

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;

    iget-object v0, v0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;->listener:Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelListener;

    invoke-interface {v0}, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelListener;->onNegativeClicked()V

    .line 1155
    :cond_0
    return-void
.end method

.method private onPositiveButtonClick()V
    .locals 2

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;

    iget-object v0, v0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;->listener:Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelListener;

    invoke-interface {v0}, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelListener;->onPositiveClicked()V

    .line 1179
    :cond_0
    return-void
.end method

.method private onPreviewImageViewTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    if-nez v0, :cond_0

    .line 1187
    const/4 v0, 0x0

    .line 1210
    :goto_0
    return v0

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery/editor/EditorMode;

    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v2}, Lcom/oneplus/widget/ScaleImageView;->getImageBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/oneplus/gallery/editor/EditorMode;->handlePreviewTouchEvent(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/MotionEvent;)V

    .line 1193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1210
    :goto_1
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1197
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->showTempOriginalPreview()V

    goto :goto_1

    .line 1204
    :pswitch_2
    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->cancelTempOriginalPreview()V

    goto :goto_1

    .line 1193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onSeekBarProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/16 v7, 0x3c

    const/16 v6, 0x37

    const/16 v5, 0x32

    const/high16 v4, 0x42480000    # 50.0f

    .line 1232
    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1234
    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;

    .line 1236
    .local v0, "handle":Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;
    iget-object v2, v0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;->type:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    sget-object v3, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;->NORMAL:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    if-ne v2, v3, :cond_5

    .line 1239
    if-lt p2, v5, :cond_1

    if-gt p2, v7, :cond_1

    if-eq p2, v6, :cond_1

    .line 1243
    invoke-virtual {p1, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1265
    .end local v0    # "handle":Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;
    :cond_0
    :goto_0
    return-void

    .line 1248
    .restart local v0    # "handle":Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;
    :cond_1
    if-ge p2, v5, :cond_3

    .line 1249
    const/high16 v2, -0x40800000    # -1.0f

    int-to-float v3, p2

    div-float/2addr v3, v4

    add-float v1, v2, v3

    .line 1259
    .local v1, "level":F
    :goto_1
    iget-object v2, v0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;->listener:Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelListener;

    new-instance v3, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;

    invoke-direct {v3, p2, v1}, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;-><init>(IF)V

    invoke-interface {v2, v3}, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelListener;->onProgressChanged(Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelProgress;)V

    .line 1263
    .end local v0    # "handle":Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;
    .end local v1    # "level":F
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelSeekBarDrawable:Lcom/oneplus/gallery/drawable/ProgressDrawable;

    if-eqz v2, :cond_0

    .line 1264
    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelSeekBarDrawable:Lcom/oneplus/gallery/drawable/ProgressDrawable;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    invoke-virtual {v2, p2, v3}, Lcom/oneplus/gallery/drawable/ProgressDrawable;->notifyProgressChanged(II)V

    goto :goto_0

    .line 1250
    .restart local v0    # "handle":Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;
    :cond_3
    if-le p2, v7, :cond_4

    .line 1251
    add-int/lit8 v2, p2, -0x3c

    int-to-float v2, v2

    div-float v1, v2, v4

    .restart local v1    # "level":F
    goto :goto_1

    .line 1253
    .end local v1    # "level":F
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "level":F
    goto :goto_1

    .line 1256
    .end local v1    # "level":F
    :cond_5
    int-to-float v2, p2

    const/high16 v3, 0x42dc0000    # 110.0f

    div-float v1, v2, v3

    .restart local v1    # "level":F
    goto :goto_1
.end method

.method private onStatusBarVisibilityChanged(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    .line 1283
    if-eqz p1, :cond_0

    .line 1284
    const/16 v0, 0x2710

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 1285
    :cond_0
    return-void
.end method

.method private save(ZZ)Z
    .locals 4
    .param p1, "saveAsNewMedia"    # Z
    .param p2, "exitWhenCompleted"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1304
    iget-boolean v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_SaveModificationWhenReady:Z

    if-eqz v2, :cond_0

    .line 1306
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v2, "save() - Already scheduled to save"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    :goto_0
    return v0

    .line 1311
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->cancelTempOriginalPreview()V

    .line 1314
    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->canAlwaysSave()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_IsModified:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 1315
    goto :goto_0

    .line 1318
    :cond_1
    iput-boolean p2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ExitAfterSaving:Z

    .line 1319
    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v3, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/editor/MediaEditor$State;->READY:Lcom/oneplus/gallery/editor/MediaEditor$State;

    if-ne v2, v3, :cond_4

    .line 1320
    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    if-eqz p1, :cond_3

    :goto_1
    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->canAlwaysSave()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->save(I)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 1321
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v2, "save() - Start saving when state of editor changes to READY"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    iput-boolean v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_SaveModificationWhenReady:Z

    .line 1323
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->setProcessingDialogVisibility(Z)V

    goto :goto_0
.end method

.method private setClippingOnlyProp(Z)Z
    .locals 3
    .param p1, "clippingOnly"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1352
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->verifyAccess()V

    .line 1355
    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->updateToolbarButtonStatus()V

    .line 1356
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->updatePreviewImageBounds(Z)V

    .line 1359
    sget-object v1, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_CLIPPING_ONLY:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-super {p0, v1, v2}, Lcom/oneplus/gallery/GalleryFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1360
    const/4 v0, 0x0

    .line 1367
    :cond_0
    :goto_0
    return v0

    .line 1363
    :cond_1
    if-eqz p1, :cond_0

    .line 1364
    const-class v1, Lcom/oneplus/gallery/editor/CropEditorMode;

    invoke-direct {p0, v1, v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->changeEditorMode(Ljava/lang/Class;Z)V

    goto :goto_0
.end method

.method private setFixedCropModeProp(Lcom/oneplus/gallery/crop/CropMode;)Z
    .locals 2
    .param p1, "cropMode"    # Lcom/oneplus/gallery/crop/CropMode;

    .prologue
    const/4 v0, 0x1

    .line 1374
    sget-object v1, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_FIXED_CROP_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v1, p1}, Lcom/oneplus/gallery/GalleryFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1376
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->updatePreviewImageBounds(Z)V

    .line 1377
    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->updateToolbarButtonStatus()V

    .line 1380
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMediaProp(Lcom/oneplus/gallery/media/PhotoMedia;)Z
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery/media/PhotoMedia;

    .prologue
    .line 1388
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->verifyAccess()V

    .line 1391
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/PhotoMedia;

    .line 1392
    .local v0, "prevMedia":Lcom/oneplus/gallery/media/PhotoMedia;
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2, p1}, Lcom/oneplus/gallery/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1393
    const/4 v1, 0x0

    .line 1396
    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/gallery/PhotoEditorFragment;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private setProgressControlsVisibility(ZZ)V
    .locals 3
    .param p1, "isVisible"    # Z
    .param p2, "animation"    # Z

    .prologue
    .line 1445
    iget-boolean v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_IsProgressControlsVisible:Z

    if-ne v0, p1, :cond_0

    .line 1453
    :goto_0
    return-void

    .line 1448
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v1, "setProgressControlsVisibility() - Visible: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1451
    iput-boolean p1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_IsProgressControlsVisible:Z

    .line 1452
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/PhotoEditorFragment;->updateProgressControlsVisibility(Z)V

    goto :goto_0
.end method

.method private showControlPanel(Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;

    .prologue
    const/16 v3, 0x6e

    const/4 v2, 0x1

    .line 1523
    iget-boolean v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_IsViewCreated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1538
    :cond_0
    :goto_0
    return-void

    .line 1527
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1528
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelSeekBar:Landroid/widget/SeekBar;

    iget v1, p1, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;->progress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1529
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelLabel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1530
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelSeekBarDrawable:Lcom/oneplus/gallery/drawable/ProgressDrawable;

    iget-object v1, p1, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;->type:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/drawable/ProgressDrawable;->setProgressType(Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;)V

    .line 1531
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelSeekBarDrawable:Lcom/oneplus/gallery/drawable/ProgressDrawable;

    iget v1, p1, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;->progress:I

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery/drawable/ProgressDrawable;->notifyProgressChanged(II)V

    .line 1532
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_OnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1533
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelPositiveButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_OnPositiveButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1534
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelNegativeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_OnNegativeButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1537
    invoke-direct {p0, v2, v2}, Lcom/oneplus/gallery/PhotoEditorFragment;->setProgressControlsVisibility(ZZ)V

    goto :goto_0
.end method

.method private showTempOriginalPreview()V
    .locals 1

    .prologue
    .line 1545
    iget-boolean v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ShowTempOriginalPreview:Z

    if-eqz v0, :cond_0

    .line 1550
    :goto_0
    return-void

    .line 1549
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery/editor/EditorMode;

    invoke-interface {v0}, Lcom/oneplus/gallery/editor/EditorMode;->showTempOriginalPreview()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ShowTempOriginalPreview:Z

    goto :goto_0
.end method

.method private updateBackgoundHeaderHeight()V
    .locals 4

    .prologue
    .line 1557
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    .line 1558
    .local v0, "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1561
    .local v1, "headerHeight":I
    sget-object v2, Lcom/oneplus/gallery/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/ScreenSize;

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 1564
    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_BackgroundHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1565
    return-void
.end method

.method private updateControlUIMargins()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1571
    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1591
    :cond_0
    :goto_0
    return-void

    .line 1573
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    .line 1574
    .local v0, "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    if-eqz v0, :cond_0

    .line 1576
    sget-object v2, Lcom/oneplus/gallery/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/ScreenSize;

    .line 1577
    .local v1, "screenSize":Lcom/oneplus/base/ScreenSize;
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1579
    sget-object v2, Lcom/oneplus/gallery/GalleryActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1585
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    invoke-virtual {v1}, Lcom/oneplus/base/ScreenSize;->getNavigationBarSize()I

    move-result v3

    invoke-static {v2, v4, v4, v4, v3}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    goto :goto_0

    .line 1582
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    invoke-virtual {v1}, Lcom/oneplus/base/ScreenSize;->getNavigationBarSize()I

    move-result v3

    invoke-static {v2, v4, v4, v3, v4}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    goto :goto_0

    .line 1590
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    invoke-static {v2, v4, v4, v4, v4}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    goto :goto_0

    .line 1579
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updatePreviewImageBounds(Z)V
    .locals 2
    .param p1, "disableLayoutAnimation"    # Z

    .prologue
    .line 1597
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/gallery/PhotoEditorFragment;->updatePreviewImageBounds(ZJ)V

    .line 1598
    return-void
.end method

.method private updatePreviewImageBounds(ZJ)V
    .locals 20
    .param p1, "disableLayoutAnimation"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 1602
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_2

    .line 1604
    const/16 v3, 0x271a

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-wide/from16 v8, p2

    invoke-static/range {v2 .. v9}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z

    .line 1643
    :cond_0
    :goto_1
    return-void

    .line 1604
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1609
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageContainer:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    if-eqz v2, :cond_0

    .line 1614
    sget-object v2, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_CLIPPING_ONLY:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/PhotoEditorFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 1615
    .local v11, "clippingOnly":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery/editor/EditorMode;

    instance-of v2, v2, Lcom/oneplus/gallery/editor/DrawingEditorMode;

    if-nez v2, :cond_9

    .line 1618
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v12

    .line 1619
    .local v12, "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 1620
    .local v16, "res":Landroid/content/res/Resources;
    sget-object v2, Lcom/oneplus/gallery/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v12, v2}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/oneplus/base/ScreenSize;

    .line 1621
    .local v18, "screenSize":Lcom/oneplus/base/ScreenSize;
    sget-object v2, Lcom/oneplus/gallery/GalleryActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v12, v2}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    const/4 v13, 0x1

    .line 1622
    .local v13, "isLandscape":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/base/ScreenSize;->getNavigationBarSize()I

    move-result v15

    .line 1623
    .local v15, "navBarHeight":I
    :goto_3
    const v2, 0x7f0500cd

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 1624
    .local v14, "left":I
    const v2, 0x7f0500cf

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0500e4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v19, v2, v3

    .line 1625
    .local v19, "top":I
    const v2, 0x7f0500ce

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-eqz v13, :cond_7

    move v2, v15

    :goto_4
    add-int v17, v3, v2

    .line 1627
    .local v17, "right":I
    const v2, 0x7f0500cc

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-eqz v11, :cond_8

    const/4 v2, 0x0

    :goto_5
    add-int/2addr v2, v3

    const v3, 0x7f0500d2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    if-eqz v13, :cond_3

    const/4 v15, 0x0

    .end local v15    # "navBarHeight":I
    :cond_3
    add-int v10, v2, v15

    .line 1639
    .end local v12    # "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    .end local v13    # "isLandscape":Z
    .end local v16    # "res":Landroid/content/res/Resources;
    .end local v18    # "screenSize":Lcom/oneplus/base/ScreenSize;
    .local v10, "bottom":I
    :goto_6
    if-eqz p1, :cond_4

    .line 1640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageContainer:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->setLayoutAnimationEnabled(Z)V

    .line 1641
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageContainer:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v2, v14, v0, v1, v10}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->setPadding(IIII)V

    .line 1642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageContainer:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->setLayoutAnimationEnabled(Z)V

    goto/16 :goto_1

    .line 1621
    .end local v10    # "bottom":I
    .end local v14    # "left":I
    .end local v17    # "right":I
    .end local v19    # "top":I
    .restart local v12    # "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    .restart local v16    # "res":Landroid/content/res/Resources;
    .restart local v18    # "screenSize":Lcom/oneplus/base/ScreenSize;
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 1622
    .restart local v13    # "isLandscape":Z
    :cond_6
    const/4 v15, 0x0

    goto :goto_3

    .line 1625
    .restart local v14    # "left":I
    .restart local v15    # "navBarHeight":I
    .restart local v19    # "top":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 1627
    .restart local v17    # "right":I
    :cond_8
    const v2, 0x7f050052

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_5

    .line 1634
    .end local v12    # "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    .end local v13    # "isLandscape":Z
    .end local v14    # "left":I
    .end local v15    # "navBarHeight":I
    .end local v16    # "res":Landroid/content/res/Resources;
    .end local v17    # "right":I
    .end local v18    # "screenSize":Lcom/oneplus/base/ScreenSize;
    .end local v19    # "top":I
    :cond_9
    const/4 v14, 0x0

    .line 1635
    .restart local v14    # "left":I
    const/16 v19, 0x0

    .line 1636
    .restart local v19    # "top":I
    const/16 v17, 0x0

    .line 1637
    .restart local v17    # "right":I
    const/4 v10, 0x0

    .restart local v10    # "bottom":I
    goto :goto_6
.end method

.method private updateProgressControlsVisibility(Z)V
    .locals 10
    .param p1, "animation"    # Z

    .prologue
    const-wide/16 v8, 0x96

    const v6, 0x7f05007f

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1650
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1738
    :goto_0
    :pswitch_0
    return-void

    .line 1654
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_IsProgressControlsVisible:Z

    if-eqz v1, :cond_2

    .line 1656
    if-eqz p1, :cond_1

    .line 1658
    sget-object v1, Lcom/oneplus/gallery/PhotoEditorFragment$30;->$SwitchMap$com$oneplus$gallery$editor$ViewVisibilityState:[I

    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelVisibilityState:Lcom/oneplus/gallery/editor/ViewVisibilityState;

    invoke-virtual {v2}, Lcom/oneplus/gallery/editor/ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1673
    :goto_1
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/PhotoEditorFragment$27;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$27;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/PhotoEditorFragment$26;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$26;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 1661
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1662
    .local v0, "diffY":I
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1663
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1664
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1670
    .end local v0    # "diffY":I
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_1

    .line 1691
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1692
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1693
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1694
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1695
    sget-object v1, Lcom/oneplus/gallery/editor/ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery/editor/ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelVisibilityState:Lcom/oneplus/gallery/editor/ViewVisibilityState;

    goto :goto_0

    .line 1700
    :cond_2
    if-eqz p1, :cond_3

    .line 1702
    sget-object v1, Lcom/oneplus/gallery/PhotoEditorFragment$30;->$SwitchMap$com$oneplus$gallery$editor$ViewVisibilityState:[I

    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelVisibilityState:Lcom/oneplus/gallery/editor/ViewVisibilityState;

    invoke-virtual {v2}, Lcom/oneplus/gallery/editor/ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 1713
    :goto_2
    :pswitch_3
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1714
    .restart local v0    # "diffY":I
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/PhotoEditorFragment$29;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$29;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/PhotoEditorFragment$28;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$28;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 1710
    .end local v0    # "diffY":I
    :pswitch_4
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_2

    .line 1733
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1734
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1735
    sget-object v1, Lcom/oneplus/gallery/editor/ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/editor/ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelVisibilityState:Lcom/oneplus/gallery/editor/ViewVisibilityState;

    goto/16 :goto_0

    .line 1658
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1702
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private updateSaveButtonState()V
    .locals 2

    .prologue
    .line 1745
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_SaveButton:Landroid/view/MenuItem;

    if-nez v1, :cond_0

    .line 1753
    :goto_0
    return-void

    .line 1749
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->canAlwaysSave()Z

    move-result v0

    .line 1750
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    if-eqz v1, :cond_1

    .line 1751
    iget-boolean v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_IsModified:Z

    or-int/2addr v0, v1

    .line 1752
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_SaveButton:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateSaveButtonTitle()V
    .locals 2

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_SaveButton:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    .line 1765
    :goto_0
    return-void

    .line 1764
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_SaveButton:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getSaveTitleRes()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateToolbarButtonStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1772
    iget-boolean v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_IsViewCreated:Z

    if-nez v0, :cond_1

    .line 1799
    :cond_0
    :goto_0
    return-void

    .line 1776
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_CLIPPING_ONLY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1777
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PrimaryToolBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1782
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_FilterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1783
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ColorFilterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1784
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_CropButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1785
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_RotateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1786
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_DrawingButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1789
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery/editor/EditorMode;

    instance-of v0, v0, Lcom/oneplus/gallery/editor/CropEditorMode;

    if-eqz v0, :cond_3

    .line 1790
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_CropButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 1779
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PrimaryToolBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1791
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery/editor/EditorMode;

    instance-of v0, v0, Lcom/oneplus/gallery/editor/RotateEditorMode;

    if-eqz v0, :cond_4

    .line 1792
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_RotateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 1793
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery/editor/EditorMode;

    instance-of v0, v0, Lcom/oneplus/gallery/editor/ColorFilterEditorMode;

    if-eqz v0, :cond_5

    .line 1794
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ColorFilterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 1795
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery/editor/EditorMode;

    instance-of v0, v0, Lcom/oneplus/gallery/editor/FilterEditorMode;

    if-eqz v0, :cond_6

    .line 1796
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_FilterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 1797
    :cond_6
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery/editor/EditorMode;

    instance-of v0, v0, Lcom/oneplus/gallery/editor/DrawingEditorMode;

    if-eqz v0, :cond_0

    .line 1798
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_DrawingButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0
.end method


# virtual methods
.method public disablePreviewImageGesture(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 514
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    if-nez v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    sget-object v1, Lcom/oneplus/gallery/PhotoEditorFragment;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    sget-object v2, Lcom/oneplus/widget/ScaleImageView;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v1, p1, v2}, Lcom/oneplus/base/BitFlagsGroup;->convertFlags(ILcom/oneplus/base/BitFlagsGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->disableGestures(I)V

    goto :goto_0
.end method

.method public enablePreviewImageGesture()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    if-nez v0, :cond_0

    .line 533
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->enableGestures()V

    goto :goto_0
.end method

.method public exit()V
    .locals 4

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->verifyAccess()V

    .line 545
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    .line 546
    .local v0, "activity":Lcom/oneplus/gallery/GalleryActivity;
    iget-boolean v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_IsModified:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->canAlwaysSave()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 548
    :cond_0
    if-eqz v0, :cond_1

    .line 550
    new-instance v1, Lcom/oneplus/gallery/PhotoEditorFragment$12;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/gallery/PhotoEditorFragment$12;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;Lcom/oneplus/gallery/GalleryActivity;)V

    .line 585
    .local v1, "fragment":Lcom/oneplus/gallery/GalleryDialogFragment;
    const-string v2, "PhotoEditorFragment.ConfirmExiting"

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/gallery/GalleryDialogFragment;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    .line 594
    .end local v1    # "fragment":Lcom/oneplus/gallery/GalleryDialogFragment;
    :goto_0
    return-void

    .line 589
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v3, "exit() - Media has been modified, but no activity to show dialog"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :cond_2
    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryActivity;->finish()V

    goto :goto_0
.end method

.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 602
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    .line 610
    :goto_0
    return-object v0

    .line 604
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_OUTPUT_FORMAT:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 605
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_OUTPUT_FORMAT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 606
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_OUTPUT_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 607
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_OUTPUT_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 608
    :cond_2
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 609
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 610
    :cond_3
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhotoEditor()Lcom/oneplus/gallery/editor/PhotoEditor;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 635
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 651
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryFragment;->handleMessage(Landroid/os/Message;)V

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 638
    :sswitch_0
    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_StatusBarHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/oneplus/gallery/Gallery;->setStatusBarVisibility(ZI)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_StatusBarHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 643
    :sswitch_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->showControlUI()V

    goto :goto_0

    .line 647
    :sswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1

    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->updatePreviewImageBounds(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 635
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_0
        0x2711 -> :sswitch_1
        0x271a -> :sswitch_2
    .end sparse-switch
.end method

.method public hideControlUI()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 661
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 678
    :goto_0
    return-void

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_NavBarHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 666
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/oneplus/gallery/Gallery;->setNavigationBarVisibility(ZI)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_NavBarHandle:Lcom/oneplus/base/Handle;

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery/PhotoEditorFragment$13;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$13;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 677
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method protected onAttachToGallery(Lcom/oneplus/gallery/Gallery;)V
    .locals 2
    .param p1, "gallery"    # Lcom/oneplus/gallery/Gallery;

    .prologue
    .line 686
    sget-object v0, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_IsNavigationBarVisibleCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/Gallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 687
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 695
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryFragment;->onCreate(Landroid/os/Bundle;)V

    .line 696
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 704
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v6, "onCreateView()"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const v3, 0x7f030014

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 710
    .local v0, "baseView":Landroid/view/View;
    const v3, 0x7f06005a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_BackgroundHeader:Landroid/view/View;

    .line 711
    const v3, 0x7f060057

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    iput-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageContainer:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    .line 712
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageContainer:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    const v6, 0x7f060058

    invoke-virtual {v3, v6}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/widget/ScaleImageView;

    iput-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    .line 713
    const v3, 0x7f060059

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    .line 714
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    const v6, 0x7f060005

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar;

    iput-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_TitleBar:Landroid/widget/Toolbar;

    .line 715
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    const v6, 0x7f06005b

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PrimaryToolBar:Landroid/view/View;

    .line 716
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PrimaryToolBar:Landroid/view/View;

    const v6, 0x7f06005e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_FilterButton:Landroid/widget/ImageButton;

    .line 717
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PrimaryToolBar:Landroid/view/View;

    const v6, 0x7f06005f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ColorFilterButton:Landroid/widget/ImageButton;

    .line 718
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PrimaryToolBar:Landroid/view/View;

    const v6, 0x7f06005d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_CropButton:Landroid/widget/ImageButton;

    .line 719
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PrimaryToolBar:Landroid/view/View;

    const v6, 0x7f06005c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_RotateButton:Landroid/widget/ImageButton;

    .line 720
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PrimaryToolBar:Landroid/view/View;

    const v6, 0x7f060060

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_DrawingButton:Landroid/widget/ImageButton;

    .line 721
    const v3, 0x7f060061

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorModeContainer:Landroid/view/View;

    .line 724
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageContainer:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    new-instance v6, Lcom/oneplus/gallery/PhotoEditorFragment$14;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$14;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-virtual {v3, v6}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->setPaddingAnimationListener(Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$PaddingAnimationListener;)V

    .line 740
    iget-object v6, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v7, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_PREVIEW_DRAWABLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v7}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v3}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 741
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    new-instance v6, Lcom/oneplus/gallery/PhotoEditorFragment$15;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$15;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-virtual {v3, v6}, Lcom/oneplus/widget/ScaleImageView;->addOnStateChangedCallback(Lcom/oneplus/widget/ScaleImageView$StateCallback;)V

    .line 751
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    new-instance v6, Lcom/oneplus/gallery/PhotoEditorFragment$16;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$16;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-virtual {v3, v6}, Lcom/oneplus/widget/ScaleImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 761
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_TitleBar:Landroid/widget/Toolbar;

    const v6, 0x7f0b0004

    invoke-virtual {v3, v6}, Landroid/widget/Toolbar;->inflateMenu(I)V

    .line 762
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_TitleBar:Landroid/widget/Toolbar;

    const v6, 0x7f020060

    invoke-virtual {v3, v6}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 763
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_TitleBar:Landroid/widget/Toolbar;

    new-instance v6, Lcom/oneplus/gallery/PhotoEditorFragment$17;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$17;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_TitleBar:Landroid/widget/Toolbar;

    new-instance v6, Lcom/oneplus/gallery/PhotoEditorFragment$18;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$18;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 781
    iget-object v6, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_TitleBar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v3

    sget-object v7, Lcom/oneplus/gallery/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v7}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/ScreenSize;

    invoke-virtual {v3}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v3

    invoke-static {v6, v5, v3, v5, v5}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    .line 782
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_TitleBar:Landroid/widget/Toolbar;

    invoke-virtual {v3}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v6, 0x7f0600a1

    invoke-interface {v3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_SaveButton:Landroid/view/MenuItem;

    .line 783
    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->updateSaveButtonTitle()V

    .line 784
    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->updateSaveButtonState()V

    .line 787
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_CropButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/oneplus/gallery/PhotoEditorFragment$19;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$19;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 797
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_RotateButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/oneplus/gallery/PhotoEditorFragment$20;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$20;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 807
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ColorFilterButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/oneplus/gallery/PhotoEditorFragment$21;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$21;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 817
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_FilterButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/oneplus/gallery/PhotoEditorFragment$22;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$22;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 827
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_DrawingButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/oneplus/gallery/PhotoEditorFragment$23;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$23;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    iput-boolean v4, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_IsViewCreated:Z

    .line 840
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->showControlUI()V

    .line 843
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorModes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/editor/EditorMode;

    .line 844
    .local v1, "editorMode":Lcom/oneplus/gallery/editor/EditorMode;
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorModeContainer:Landroid/view/View;

    invoke-interface {v1, v3}, Lcom/oneplus/gallery/editor/EditorMode;->onCreateView(Landroid/view/View;)V

    goto :goto_0

    .line 847
    .end local v1    # "editorMode":Lcom/oneplus/gallery/editor/EditorMode;
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery/editor/EditorMode;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery/editor/EditorMode;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    :goto_1
    iget-boolean v6, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_IsInitialEditorMode:Z

    if-nez v6, :cond_2

    :goto_2
    invoke-direct {p0, v3, v4}, Lcom/oneplus/gallery/PhotoEditorFragment;->changeEditorMode(Ljava/lang/Class;Z)V

    .line 848
    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->updateBackgoundHeaderHeight()V

    .line 849
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v4, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/oneplus/gallery/PhotoEditorFragment;->onEditorModificationStateChanged(Z)V

    .line 852
    return-object v0

    .line 847
    :cond_1
    const-class v3, Lcom/oneplus/gallery/editor/RotateEditorMode;

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 861
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/PhotoEditorFragment;->setProcessingDialogVisibility(Z)V

    .line 864
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorModes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/editor/EditorMode;

    .line 865
    .local v0, "editorMode":Lcom/oneplus/gallery/editor/EditorMode;
    invoke-interface {v0}, Lcom/oneplus/gallery/editor/EditorMode;->release()V

    goto :goto_0

    .line 868
    .end local v0    # "editorMode":Lcom/oneplus/gallery/editor/EditorMode;
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    invoke-virtual {v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->release()V

    .line 871
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v1

    .line 872
    .local v1, "gallery":Lcom/oneplus/gallery/Gallery;
    if-eqz v1, :cond_1

    .line 873
    sget-object v3, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_IsNavigationBarVisibleCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/gallery/Gallery;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 876
    :cond_1
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onDestroy()V

    .line 877
    return-void
.end method

.method public onDestroyView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 884
    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v3, "onDestroyView"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    iput-object v4, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_CropButton:Landroid/widget/ImageButton;

    .line 888
    iput-object v4, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_RotateButton:Landroid/widget/ImageButton;

    .line 889
    iput-object v4, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_DrawingButton:Landroid/widget/ImageButton;

    .line 890
    iput-object v4, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PrimaryToolBar:Landroid/view/View;

    .line 891
    iput-object v4, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_SaveButton:Landroid/view/MenuItem;

    .line 892
    iput-object v4, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_TitleBar:Landroid/widget/Toolbar;

    .line 893
    iput-object v4, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    .line 894
    iput-object v4, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageContainer:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    .line 897
    iput-object v4, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    .line 898
    iput-boolean v5, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_IsProgressControlsVisible:Z

    .line 899
    sget-object v2, Lcom/oneplus/gallery/editor/ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/editor/ViewVisibilityState;

    iput-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelVisibilityState:Lcom/oneplus/gallery/editor/ViewVisibilityState;

    .line 902
    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_EditorModes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/editor/EditorMode;

    .line 903
    .local v0, "editorMode":Lcom/oneplus/gallery/editor/EditorMode;
    invoke-interface {v0}, Lcom/oneplus/gallery/editor/EditorMode;->onDestroyView()V

    goto :goto_0

    .line 906
    .end local v0    # "editorMode":Lcom/oneplus/gallery/editor/EditorMode;
    :cond_0
    iput-boolean v5, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_IsViewCreated:Z

    .line 909
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onDestroyView()V

    .line 910
    return-void
.end method

.method protected onNavigationBarVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 1142
    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->updateControlUIMargins()V

    .line 1145
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->updatePreviewImageBounds(Z)V

    .line 1146
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1163
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    .line 1164
    .local v0, "gallery":Lcom/oneplus/gallery/Gallery;
    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_StatusBarVisibilityChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/Gallery;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1165
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_StatusBarHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_StatusBarHandle:Lcom/oneplus/base/Handle;

    .line 1166
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1169
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onPause()V

    .line 1170
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1219
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onResume()V

    .line 1222
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    .line 1223
    .local v0, "gallery":Lcom/oneplus/gallery/Gallery;
    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_StatusBarVisibilityChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/Gallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1224
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/Gallery;->setStatusBarVisibility(ZI)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_StatusBarHandle:Lcom/oneplus/base/Handle;

    .line 1225
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1273
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onStart()V

    .line 1276
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_USE_LESS_MEMORY:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1277
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_USE_LESS_MEMORY:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1296
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onStop()V

    .line 1297
    return-void
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 1332
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_CLIPPING_ONLY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 1333
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->setClippingOnlyProp(Z)Z

    move-result v0

    .line 1344
    :goto_0
    return v0

    .line 1334
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_FIXED_CROP_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 1335
    check-cast p2, Lcom/oneplus/gallery/crop/CropMode;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/PhotoEditorFragment;->setFixedCropModeProp(Lcom/oneplus/gallery/crop/CropMode;)Z

    move-result v0

    goto :goto_0

    .line 1336
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 1337
    check-cast p2, Lcom/oneplus/gallery/media/PhotoMedia;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/PhotoEditorFragment;->setMediaProp(Lcom/oneplus/gallery/media/PhotoMedia;)Z

    move-result v0

    goto :goto_0

    .line 1338
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_2
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_OUTPUT_FORMAT:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 1339
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_OUTPUT_FORMAT:Lcom/oneplus/base/PropertyKey;

    check-cast p2, Landroid/graphics/Bitmap$CompressFormat;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {v0, v1, p2}, Lcom/oneplus/gallery/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1340
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_3
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_OUTPUT_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 1341
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_OUTPUT_SIZE:Lcom/oneplus/base/PropertyKey;

    check-cast p2, Landroid/util/Size;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {v0, v1, p2}, Lcom/oneplus/gallery/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1342
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_4
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 1343
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    check-cast p2, Landroid/net/Uri;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {v0, v1, p2}, Lcom/oneplus/gallery/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1344
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/GalleryFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setPreviewImageBoundsChangeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->isImageBoundsChangeEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1411
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v1, "setPreviewImageBoundsChangeEnabled() - Enable: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1414
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/ScaleImageView;->setImageBoundsChangeEnabled(Z)V

    goto :goto_0
.end method

.method public setProcessingDialogVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 1421
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    if-nez v1, :cond_1

    .line 1438
    :cond_0
    :goto_0
    return-void

    .line 1423
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery/editor/PhotoEditor;

    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/editor/MediaEditor$State;

    .line 1424
    .local v0, "state":Lcom/oneplus/gallery/editor/MediaEditor$State;
    if-eqz p1, :cond_5

    .line 1426
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ProcessingDialog:Lcom/oneplus/gallery/ui/ProcessingDialog;

    if-nez v1, :cond_2

    .line 1427
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v1

    const-class v2, Lcom/oneplus/gallery/ui/ProcessingDialog;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/Gallery;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/ui/ProcessingDialog;

    iput-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ProcessingDialog:Lcom/oneplus/gallery/ui/ProcessingDialog;

    .line 1428
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ProcessingDialog:Lcom/oneplus/gallery/ui/ProcessingDialog;

    if-eqz v1, :cond_4

    .line 1430
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1431
    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ProcessingDialog:Lcom/oneplus/gallery/ui/ProcessingDialog;

    sget-object v1, Lcom/oneplus/gallery/editor/MediaEditor$State;->PREPARING:Lcom/oneplus/gallery/editor/MediaEditor$State;

    if-ne v0, v1, :cond_3

    const v1, 0x7f09000c

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/PhotoEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/oneplus/gallery/ui/ProcessingDialog;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    :cond_3
    const v1, 0x7f09000d

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/PhotoEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1434
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v2, "setProcessingDialogVisibility() - No ProcessingDialog interface"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1437
    :cond_5
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method public showControlPanel(ILjava/lang/String;Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelListener;)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "progress"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;
    .param p4, "listener"    # Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelListener;

    .prologue
    .line 1480
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1481
    const/4 v0, 0x0

    .line 1515
    :cond_0
    :goto_0
    return-object v0

    .line 1484
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v6

    .line 1485
    .local v6, "activity":Lcom/oneplus/gallery/GalleryActivity;
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    if-nez v1, :cond_2

    .line 1487
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    const v2, 0x7f060062

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    .line 1488
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    new-instance v2, Lcom/oneplus/gallery/PhotoEditorFragment$25;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/PhotoEditorFragment$25;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1496
    new-instance v1, Lcom/oneplus/gallery/drawable/ProgressDrawable;

    invoke-direct {v1, v6}, Lcom/oneplus/gallery/drawable/ProgressDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelSeekBarDrawable:Lcom/oneplus/gallery/drawable/ProgressDrawable;

    .line 1497
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    const v2, 0x7f06006e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelSeekBar:Landroid/widget/SeekBar;

    .line 1498
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelSeekBarDrawable:Lcom/oneplus/gallery/drawable/ProgressDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1499
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    const v2, 0x7f060070

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelPositiveButton:Landroid/widget/ImageButton;

    .line 1500
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    const v2, 0x7f06006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelNegativeButton:Landroid/widget/ImageButton;

    .line 1501
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    const v2, 0x7f060071

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelLabel:Landroid/widget/TextView;

    .line 1505
    :cond_2
    new-instance v0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;ILjava/lang/String;Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelListener;)V

    .line 1506
    .local v0, "handle":Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1508
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v2, "showControlPanel() - Handle size: "

    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1511
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1512
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->showControlPanel(Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;)V

    goto/16 :goto_0
.end method

.method public showControlUI()V
    .locals 4

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1472
    :goto_0
    return-void

    .line 1464
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_NavBarHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_NavBarHandle:Lcom/oneplus/base/Handle;

    .line 1467
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1468
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1471
    invoke-direct {p0}, Lcom/oneplus/gallery/PhotoEditorFragment;->updateControlUIMargins()V

    goto :goto_0
.end method
