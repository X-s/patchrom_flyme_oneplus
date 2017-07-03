.class public Lcom/oneplus/gallery2/PhotoEditorFragment;
.super Lcom/oneplus/gallery2/GalleryFragment;
.source "PhotoEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/PhotoEditorFragment$31;,
        Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;,
        Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;,
        Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;
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
            "Lcom/oneplus/gallery2/media/PhotoMedia;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MEDIA_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_OUTPUT_ALBUM_ID:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Long;",
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
            "Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_ControlPanelLabel:Landroid/widget/TextView;

.field private m_ControlPanelNegativeButton:Landroid/widget/ImageButton;

.field private m_ControlPanelPositiveButton:Landroid/widget/ImageButton;

.field private m_ControlPanelSeekBar:Landroid/widget/SeekBar;

.field private m_ControlPanelSeekBarDrawable:Lcom/oneplus/gallery/drawable/ProgressDrawable;

.field private m_ControlPanelVisibilityState:Lcom/oneplus/gallery2/editor/ViewVisibilityState;

.field private m_ControlUIContainer:Landroid/view/View;

.field private m_CropButton:Landroid/widget/ImageButton;

.field private m_DrawingButton:Landroid/widget/ImageButton;

.field private m_EditorMode:Lcom/oneplus/gallery2/editor/EditorMode;

.field private m_EditorModeContainer:Landroid/view/View;

.field private m_EditorModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/editor/EditorMode;",
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

.field private final m_MediaSizeCallback:Lcom/oneplus/gallery2/media/Media$SizeCallback;

.field private m_NavBarHandle:Lcom/oneplus/base/Handle;

.field private m_OnNegativeButtonClickListener:Landroid/view/View$OnClickListener;

.field private m_OnPositiveButtonClickListener:Landroid/view/View$OnClickListener;

.field private m_OnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

.field private m_PreviewImageContainer:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

.field private m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

.field private m_PreviewImageViewLocation:[I

.field private m_PrimaryToolBar:Landroid/view/View;

.field private m_ProcessingDialog:Lcom/oneplus/gallery2/ui/ProcessingDialog;

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
    .locals 6

    .prologue
    .line 80
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "Media"

    const-class v2, Lcom/oneplus/gallery2/media/PhotoMedia;

    const-class v3, Lcom/oneplus/gallery2/PhotoEditorFragment;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    .line 84
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MediaSize"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/oneplus/gallery2/PhotoEditorFragment;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_MEDIA_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 90
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "Clipping"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/PhotoEditorFragment;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_CLIPPING_ONLY:Lcom/oneplus/base/PropertyKey;

    .line 94
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "CreateModifiedThumb"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/PhotoEditorFragment;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_CREATE_MODIFIED_THUMB:Lcom/oneplus/base/PropertyKey;

    .line 98
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "EmbeddedThumbSize"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/oneplus/gallery2/PhotoEditorFragment;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_EMBEDDED_THUMB_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 102
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "FixedCropMode"

    const-class v2, Lcom/oneplus/gallery/crop/CropMode;

    const-class v3, Lcom/oneplus/gallery2/PhotoEditorFragment;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_FIXED_CROP_MODE:Lcom/oneplus/base/PropertyKey;

    .line 106
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsPreviewImageContainerAnimating"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/PhotoEditorFragment;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_IS_PREVIEW_IMAGE_CONTAINER_ANIMATING:Lcom/oneplus/base/PropertyKey;

    .line 110
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "OutputAlbumId"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/gallery2/PhotoEditorFragment;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_OUTPUT_ALBUM_ID:Lcom/oneplus/base/PropertyKey;

    .line 114
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "OutputFormat"

    const-class v2, Landroid/graphics/Bitmap$CompressFormat;

    const-class v3, Lcom/oneplus/gallery2/PhotoEditorFragment;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_OUTPUT_FORMAT:Lcom/oneplus/base/PropertyKey;

    .line 118
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "OutputSize"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/oneplus/gallery2/PhotoEditorFragment;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_OUTPUT_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 122
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "OutputUri"

    const-class v2, Landroid/net/Uri;

    const-class v3, Lcom/oneplus/gallery2/PhotoEditorFragment;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    .line 126
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PreviewImageBounds"

    const-class v2, Landroid/graphics/Rect;

    const-class v3, Lcom/oneplus/gallery2/PhotoEditorFragment;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_PREVIEW_IMAGE_BOUNDS:Lcom/oneplus/base/PropertyKey;

    .line 132
    new-instance v0, Lcom/oneplus/base/BitFlagsGroup;

    const-class v1, Lcom/oneplus/gallery2/PhotoEditorFragment;

    invoke-direct {v0, v1}, Lcom/oneplus/base/BitFlagsGroup;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    .line 136
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->FLAG_GESTURE_ONE_FINGER_SCROLL:I

    .line 140
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->FLAG_GESTURE_MULTIPLE_FINGERS_SCALE:I

    .line 144
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->FLAG_GESTURE_MULTIPLE_FINGERS_SCROLL:I

    .line 148
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->FLAG_GESTURE_DOUBLE_TAP_SCALE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryFragment;-><init>()V

    .line 154
    new-instance v0, Lcom/oneplus/gallery2/PhotoEditorFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$1;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->INITIALIZER:Ljava/lang/Object;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;

    .line 192
    sget-object v0, Lcom/oneplus/gallery2/editor/ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery2/editor/ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelVisibilityState:Lcom/oneplus/gallery2/editor/ViewVisibilityState;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorModes:Ljava/util/List;

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_IsInitialEditorMode:Z

    .line 210
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageViewLocation:[I

    .line 224
    new-instance v0, Lcom/oneplus/gallery2/PhotoEditorFragment$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$2;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_IsNavigationBarVisibleCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 232
    new-instance v0, Lcom/oneplus/gallery2/PhotoEditorFragment$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$3;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_MediaSizeCallback:Lcom/oneplus/gallery2/media/Media$SizeCallback;

    .line 240
    new-instance v0, Lcom/oneplus/gallery2/PhotoEditorFragment$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$4;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_StatusBarVisibilityChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 251
    new-instance v0, Lcom/oneplus/gallery2/PhotoEditorFragment$5;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$5;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_OnNegativeButtonClickListener:Landroid/view/View$OnClickListener;

    .line 259
    new-instance v0, Lcom/oneplus/gallery2/PhotoEditorFragment$6;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$6;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_OnPositiveButtonClickListener:Landroid/view/View$OnClickListener;

    .line 267
    new-instance v0, Lcom/oneplus/gallery2/PhotoEditorFragment$7;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$7;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_OnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 371
    new-instance v0, Lcom/oneplus/gallery2/editor/PhotoEditor;

    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    .line 372
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/gallery2/PhotoEditorFragment$8;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$8;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 380
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_PREVIEW_DRAWABLE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/gallery2/PhotoEditorFragment$9;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$9;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 388
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/gallery2/PhotoEditorFragment$10;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$10;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 396
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/gallery2/PhotoEditorFragment$11;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$11;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 404
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/gallery2/PhotoEditorFragment$12;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$12;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 414
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorModes:Ljava/util/List;

    new-instance v1, Lcom/oneplus/gallery2/editor/RotateEditorMode;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/editor/RotateEditorMode;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorModes:Ljava/util/List;

    new-instance v1, Lcom/oneplus/gallery2/editor/CropEditorMode;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/editor/CropEditorMode;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorModes:Ljava/util/List;

    new-instance v1, Lcom/oneplus/gallery2/editor/FilterEditorMode;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/editor/FilterEditorMode;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorModes:Ljava/util/List;

    new-instance v1, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorModes:Ljava/util/List;

    new-instance v1, Lcom/oneplus/gallery2/editor/DrawingEditorMode;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/PhotoEditorFragment;Lcom/oneplus/gallery2/media/Media;Landroid/util/Size;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "x2"    # Landroid/util/Size;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->onMediaSizeObtained(Lcom/oneplus/gallery2/media/Media;Landroid/util/Size;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/PhotoEditorFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/PhotoEditorFragment;->onStatusBarVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery2/PhotoEditorFragment;Lcom/oneplus/gallery2/editor/MediaEditor$State;Lcom/oneplus/gallery2/editor/MediaEditor$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/editor/MediaEditor$State;
    .param p2, "x2"    # Lcom/oneplus/gallery2/editor/MediaEditor$State;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->onEditorStateChanged(Lcom/oneplus/gallery2/editor/MediaEditor$State;Lcom/oneplus/gallery2/editor/MediaEditor$State;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery2/PhotoEditorFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/PhotoEditorFragment;->onEditorOrientationChanged(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/gallery2/PhotoEditorFragment;Landroid/graphics/RectF;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/PhotoEditorFragment;->onEditorClipRectChanged(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/gallery2/PhotoEditorFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getSaveTitleRes()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/gallery2/PhotoEditorFragment;ZZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->save(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/oneplus/gallery2/PhotoEditorFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oneplus/gallery2/PhotoEditorFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/oneplus/gallery2/PhotoEditorFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/oneplus/gallery2/PhotoEditorFragment;)[I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageViewLocation:[I

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oneplus/gallery2/PhotoEditorFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/PhotoEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->onNegativeButtonClick()V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/gallery2/PhotoEditorFragment;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/PhotoEditorFragment;->onPreviewImageViewTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/oneplus/gallery2/PhotoEditorFragment;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_SaveButton:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/oneplus/gallery2/PhotoEditorFragment;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/PhotoEditorFragment;->changeEditorMode(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/oneplus/gallery2/PhotoEditorFragment;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ResultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/oneplus/gallery2/PhotoEditorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/oneplus/gallery2/PhotoEditorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/oneplus/gallery2/PhotoEditorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/oneplus/gallery2/PhotoEditorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/oneplus/gallery2/PhotoEditorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/oneplus/gallery2/PhotoEditorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/PhotoEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->onPositiveButtonClick()V

    return-void
.end method

.method static synthetic access$3000(Lcom/oneplus/gallery2/PhotoEditorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/oneplus/gallery2/PhotoEditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ExitAfterSaving:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/oneplus/gallery2/PhotoEditorFragment;Lcom/oneplus/gallery2/editor/ViewVisibilityState;)Lcom/oneplus/gallery2/editor/ViewVisibilityState;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/editor/ViewVisibilityState;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelVisibilityState:Lcom/oneplus/gallery2/editor/ViewVisibilityState;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/oneplus/gallery2/PhotoEditorFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/gallery2/PhotoEditorFragment;Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;
    .param p1, "x1"    # Landroid/widget/SeekBar;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/PhotoEditorFragment;->onSeekBarProgressChanged(Landroid/widget/SeekBar;IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/gallery2/PhotoEditorFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/gallery2/PhotoEditorFragment;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->setProgressControlsVisibility(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/gallery2/PhotoEditorFragment;Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/PhotoEditorFragment;->showControlPanel(Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/gallery2/PhotoEditorFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/PhotoEditorFragment;->onEditorModificationStateChanged(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/gallery2/PhotoEditorFragment;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/PhotoEditorFragment;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/PhotoEditorFragment;->onEditorPreviewChanged(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private canAlwaysSave()Z
    .locals 1

    .prologue
    .line 425
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

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
    .line 433
    iget-boolean v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ShowTempOriginalPreview:Z

    if-nez v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 435
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ShowTempOriginalPreview:Z

    .line 438
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery2/editor/EditorMode;

    invoke-interface {v0}, Lcom/oneplus/gallery2/editor/EditorMode;->cancelTempOriginalPreview()Z

    .line 441
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_IsModified:Z

    .line 442
    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->updateSaveButtonState()V

    goto :goto_0
.end method

.method private changeEditorMode(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/oneplus/gallery2/editor/EditorMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p1, "editorMode":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/oneplus/gallery2/editor/EditorMode;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->changeEditorMode(Ljava/lang/Class;Z)V

    .line 450
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
            "Lcom/oneplus/gallery2/editor/EditorMode;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "editorMode":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/oneplus/gallery2/editor/EditorMode;>;"
    const/4 v7, 0x0

    .line 454
    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->cancelTempOriginalPreview()V

    .line 457
    const/4 v5, 0x0

    .line 458
    .local v5, "newMode":Lcom/oneplus/gallery2/editor/EditorMode;
    iget-object v8, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorModes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/editor/EditorMode;

    .line 460
    .local v4, "mode":Lcom/oneplus/gallery2/editor/EditorMode;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 462
    move-object v5, v4

    .line 466
    .end local v4    # "mode":Lcom/oneplus/gallery2/editor/EditorMode;
    :cond_1
    if-nez v5, :cond_2

    .line 468
    iget-object v7, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

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

    .line 515
    :goto_0
    return-void

    .line 473
    :cond_2
    iget-object v8, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery2/editor/EditorMode;

    if-eq v5, v8, :cond_6

    .line 476
    iget-object v6, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery2/editor/EditorMode;

    .line 477
    .local v6, "oldMode":Lcom/oneplus/gallery2/editor/EditorMode;
    iput-object v5, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery2/editor/EditorMode;

    .line 480
    if-eqz v6, :cond_3

    .line 481
    invoke-interface {v6, v7}, Lcom/oneplus/gallery2/editor/EditorMode;->exit(I)V

    .line 484
    :cond_3
    iget-boolean v8, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_IsInitialEditorMode:Z

    if-eqz v8, :cond_4

    sget v0, Lcom/oneplus/gallery2/editor/EditorMode;->FLAG_IS_INITIAL_EDITOR_MODE:I

    .line 485
    .local v0, "flags":I
    :goto_1
    iget-object v8, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery2/editor/EditorMode;

    invoke-interface {v8, v0}, Lcom/oneplus/gallery2/editor/EditorMode;->enter(I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 487
    iget-object v7, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changeEditorMode() - Fail to change to editor mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery2/editor/EditorMode;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "flags":I
    :cond_4
    move v0, v7

    .line 484
    goto :goto_1

    .line 492
    .restart local v0    # "flags":I
    :cond_5
    iget-object v8, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    if-eqz v8, :cond_6

    .line 493
    iget-object v8, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    sget-object v9, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v8, v9}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 497
    .end local v0    # "flags":I
    .end local v6    # "oldMode":Lcom/oneplus/gallery2/editor/EditorMode;
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->updateToolbarButtonStatus()V

    .line 500
    iget-boolean v8, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_IsInitialEditorMode:Z

    if-nez v8, :cond_7

    .line 501
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->updatePreviewImageBounds(Z)V

    goto :goto_0

    .line 504
    :cond_7
    iput-boolean v7, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_IsInitialEditorMode:Z

    .line 505
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v1

    .line 506
    .local v1, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    if-nez v1, :cond_8

    move v3, v7

    .line 507
    .local v3, "isServiceMode":Z
    :goto_2
    if-nez v3, :cond_9

    .line 508
    const-wide/16 v8, 0x190

    invoke-direct {p0, p2, v8, v9}, Lcom/oneplus/gallery2/PhotoEditorFragment;->updatePreviewImageBounds(ZJ)V

    goto :goto_0

    .line 506
    .end local v3    # "isServiceMode":Z
    :cond_8
    invoke-virtual {v1}, Lcom/oneplus/gallery2/GalleryActivity;->isServiceMode()Z

    move-result v3

    goto :goto_2

    .line 511
    .restart local v3    # "isServiceMode":Z
    :cond_9
    const/16 v7, 0x271a

    invoke-static {p0, v7}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 512
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/oneplus/gallery2/PhotoEditorFragment;->updatePreviewImageBounds(Z)V

    goto :goto_0
.end method

.method private getSaveTitleRes()I
    .locals 1

    .prologue
    .line 645
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

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
    .line 935
    return-void
.end method

.method private onEditorModificationStateChanged(Z)V
    .locals 1
    .param p1, "isModified"    # Z

    .prologue
    .line 941
    iget-boolean v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ShowTempOriginalPreview:Z

    if-eqz v0, :cond_0

    .line 945
    :goto_0
    return-void

    .line 943
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_IsModified:Z

    .line 944
    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->updateSaveButtonState()V

    goto :goto_0
.end method

.method private onEditorOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 951
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    if-nez v0, :cond_0

    .line 954
    :goto_0
    return-void

    .line 953
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->updatePreviewImageBounds(Z)V

    goto :goto_0
.end method

.method private onEditorPreviewChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "preview"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 960
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 962
    :cond_0
    return-void
.end method

.method private onEditorStateChanged(Lcom/oneplus/gallery2/editor/MediaEditor$State;Lcom/oneplus/gallery2/editor/MediaEditor$State;)V
    .locals 13
    .param p1, "prevState"    # Lcom/oneplus/gallery2/editor/MediaEditor$State;
    .param p2, "state"    # Lcom/oneplus/gallery2/editor/MediaEditor$State;

    .prologue
    .line 969
    sget-object v2, Lcom/oneplus/gallery2/PhotoEditorFragment$31;->$SwitchMap$com$oneplus$gallery2$editor$MediaEditor$State:[I

    invoke-virtual {p2}, Lcom/oneplus/gallery2/editor/MediaEditor$State;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 1163
    :cond_0
    :goto_0
    return-void

    .line 974
    :pswitch_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->setProcessingDialogVisibility(Z)V

    goto :goto_0

    .line 983
    :pswitch_1
    sget-object v2, Lcom/oneplus/gallery2/editor/MediaEditor$State;->PROCESSING_PREVIEW:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/oneplus/gallery2/editor/MediaEditor$State;->PROCESSING:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    if-ne p1, v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ExitAfterSaving:Z

    if-nez v2, :cond_2

    .line 984
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->setProcessingDialogVisibility(Z)V

    .line 987
    :cond_2
    iget-boolean v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_SaveModificationWhenReady:Z

    if-eqz v2, :cond_3

    .line 989
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v4, "onEditorStateChanged() - Start saving modification"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_SaveModificationWhenReady:Z

    .line 991
    const/4 v2, 0x1

    iget-boolean v4, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ExitAfterSaving:Z

    invoke-direct {p0, v2, v4}, Lcom/oneplus/gallery2/PhotoEditorFragment;->save(ZZ)Z

    goto :goto_0

    .line 996
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v6

    .line 997
    .local v6, "activity":Lcom/oneplus/gallery2/GalleryActivity;
    if-nez v6, :cond_4

    .line 999
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v4, "onEditorStateChanged() - No activity"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1004
    :cond_4
    sget-object v2, Lcom/oneplus/gallery2/editor/MediaEditor$State;->PREPARING:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    if-ne p1, v2, :cond_5

    sget-object v2, Lcom/oneplus/gallery2/editor/MediaEditor$State;->ERROR:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    if-ne p2, v2, :cond_5

    .line 1006
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v4, "onEditorStateChanged() - Cannot edit photo"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const v2, 0x7f090038

    invoke-virtual {v6, v2}, Lcom/oneplus/gallery2/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v6, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1008
    invoke-virtual {v6}, Lcom/oneplus/gallery2/GalleryActivity;->finish()V

    goto :goto_0

    .line 1013
    :cond_5
    sget-object v2, Lcom/oneplus/gallery2/editor/MediaEditor$State;->PROCESSING:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->isDetached()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1016
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v4, Lcom/oneplus/gallery2/editor/MediaEditor;->PROP_MEDIA_SAVING_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v4}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    .line 1017
    .local v10, "savingState":Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;
    sget-object v2, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;->SUCCESS:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    if-eq v10, v2, :cond_6

    .line 1019
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEditorStateChanged() - savingState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    sget-object v2, Lcom/oneplus/gallery2/PhotoEditorFragment$31;->$SwitchMap$com$oneplus$gallery2$editor$MediaEditor$MediaSavingState:[I

    invoke-virtual {v10}, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_1

    .line 1031
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->setProcessingDialogVisibility(Z)V

    .line 1033
    iget-boolean v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ExitAfterSaving:Z

    if-nez v2, :cond_0

    .line 1038
    :cond_6
    sget-object v2, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_EMBEDDED_THUMB_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Size;

    .line 1039
    .local v9, "embeddedThumbSize":Landroid/util/Size;
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v4, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_MODIFIED_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v4}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 1040
    .local v1, "modifiedMedia":Lcom/oneplus/gallery2/media/Media;
    if-nez v1, :cond_7

    .line 1041
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v4, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v4}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "modifiedMedia":Lcom/oneplus/gallery2/media/Media;
    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 1044
    .restart local v1    # "modifiedMedia":Lcom/oneplus/gallery2/media/Media;
    :cond_7
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v4, "onEditorStateChanged() - Finish activity, media : "

    invoke-static {v2, v4, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1045
    if-eqz v1, :cond_c

    .line 1047
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ResultIntent:Landroid/content/Intent;

    .line 1048
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ResultIntent:Landroid/content/Intent;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1049
    const/4 v2, -0x1

    iget-object v4, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ResultIntent:Landroid/content/Intent;

    invoke-virtual {v6, v2, v4}, Lcom/oneplus/gallery2/GalleryActivity;->setResult(ILandroid/content/Intent;)V

    .line 1052
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v4, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_AUTO_SELECT_OUTPUT_PATH:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v4}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1054
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f09000f

    invoke-virtual {v6, v4}, Lcom/oneplus/gallery2/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1055
    .local v12, "toastStr":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {v6, v12, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1056
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v4, "onEditorStateChanged() - OTG case, save file to Pictures folder"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    .end local v12    # "toastStr":Ljava/lang/String;
    :cond_8
    sget-object v2, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_OUTPUT_ALBUM_ID:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 1061
    .local v7, "albumId":Ljava/lang/Long;
    if-eqz v7, :cond_9

    .line 1063
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v2, 0x0

    invoke-interface {v1, v4, v5, v2}, Lcom/oneplus/gallery2/media/Media;->addToAlbum(JI)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1064
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEditorStateChanged() - Add media to album "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    .end local v7    # "albumId":Ljava/lang/Long;
    :cond_9
    :goto_2
    sget-object v2, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_CREATE_MODIFIED_THUMB:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    if-eqz v9, :cond_10

    .line 1086
    :cond_a
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v2

    const-class v4, Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    invoke-virtual {v2, v4}, Lcom/oneplus/gallery2/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    .line 1087
    .local v0, "thumbnailImageManager":Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    if-eqz v0, :cond_0

    .line 1089
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v11

    .line 1090
    .local v11, "thumbnailActivateHandle":Lcom/oneplus/base/Handle;
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->invalidateThumbnailImages(Lcom/oneplus/gallery2/media/Media;I)V

    .line 1091
    const/4 v3, 0x3

    .line 1092
    .local v3, "decodeFlags":I
    sget-object v2, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->SCREEN:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    new-instance v4, Lcom/oneplus/gallery2/PhotoEditorFragment$25;

    invoke-direct {v4, p0, v9, v11, v6}, Lcom/oneplus/gallery2/PhotoEditorFragment$25;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;Landroid/util/Size;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/GalleryActivity;)V

    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;ILcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 1023
    .end local v0    # "thumbnailImageManager":Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    .end local v1    # "modifiedMedia":Lcom/oneplus/gallery2/media/Media;
    .end local v3    # "decodeFlags":I
    .end local v9    # "embeddedThumbSize":Landroid/util/Size;
    .end local v11    # "thumbnailActivateHandle":Lcom/oneplus/base/Handle;
    :pswitch_2
    const v2, 0x7f090015

    invoke-virtual {v6, v2}, Lcom/oneplus/gallery2/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v6, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1026
    :pswitch_3
    const v2, 0x7f09008a

    invoke-virtual {v6, v2}, Lcom/oneplus/gallery2/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v6, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1066
    .restart local v1    # "modifiedMedia":Lcom/oneplus/gallery2/media/Media;
    .restart local v7    # "albumId":Ljava/lang/Long;
    .restart local v9    # "embeddedThumbSize":Landroid/util/Size;
    :cond_b
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEditorStateChanged() - Fail to add media to album "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1071
    .end local v7    # "albumId":Ljava/lang/Long;
    :cond_c
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v4, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v4}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 1072
    .local v8, "contentUri":Landroid/net/Uri;
    if-nez v8, :cond_d

    if-eqz v9, :cond_f

    .line 1074
    :cond_d
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ResultIntent:Landroid/content/Intent;

    .line 1075
    if-eqz v8, :cond_e

    .line 1076
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ResultIntent:Landroid/content/Intent;

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1077
    :cond_e
    const/4 v2, -0x1

    iget-object v4, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ResultIntent:Landroid/content/Intent;

    invoke-virtual {v6, v2, v4}, Lcom/oneplus/gallery2/GalleryActivity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_2

    .line 1080
    :cond_f
    const/4 v2, -0x1

    invoke-virtual {v6, v2}, Lcom/oneplus/gallery2/GalleryActivity;->setResult(I)V

    goto/16 :goto_2

    .line 1153
    .end local v8    # "contentUri":Landroid/net/Uri;
    :cond_10
    iget-boolean v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ExitAfterSaving:Z

    if-eqz v2, :cond_0

    .line 1155
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->setProcessingDialogVisibility(Z)V

    .line 1156
    invoke-virtual {v6}, Lcom/oneplus/gallery2/GalleryActivity;->finish()V

    goto/16 :goto_0

    .line 969
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1020
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onMediaSizeObtained(Lcom/oneplus/gallery2/media/Media;Landroid/util/Size;)V
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "size"    # Landroid/util/Size;

    .prologue
    .line 1170
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 1177
    :cond_0
    :goto_0
    return-void

    .line 1173
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaSizeObtained() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_MEDIA_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onNegativeButtonClick()V
    .locals 2

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;->listener:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;

    invoke-interface {v0}, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;->onNegativeClicked()V

    .line 1197
    :cond_0
    return-void
.end method

.method private onPositiveButtonClick()V
    .locals 2

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;->listener:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;

    invoke-interface {v0}, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;->onPositiveClicked()V

    .line 1221
    :cond_0
    return-void
.end method

.method private onPreviewImageViewTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    if-nez v0, :cond_0

    .line 1229
    const/4 v0, 0x0

    .line 1252
    :goto_0
    return v0

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery2/editor/EditorMode;

    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v2}, Lcom/oneplus/widget/ScaleImageView;->getImageBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/oneplus/gallery2/editor/EditorMode;->handlePreviewTouchEvent(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/MotionEvent;)V

    .line 1235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1252
    :goto_1
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1239
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->showTempOriginalPreview()V

    goto :goto_1

    .line 1246
    :pswitch_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->cancelTempOriginalPreview()V

    goto :goto_1

    .line 1235
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

    .line 1274
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1276
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;

    .line 1278
    .local v0, "handle":Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;
    iget-object v2, v0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;->type:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    sget-object v3, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;->NORMAL:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    if-ne v2, v3, :cond_5

    .line 1281
    if-lt p2, v5, :cond_1

    if-gt p2, v7, :cond_1

    if-eq p2, v6, :cond_1

    .line 1285
    invoke-virtual {p1, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1307
    .end local v0    # "handle":Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;
    :cond_0
    :goto_0
    return-void

    .line 1290
    .restart local v0    # "handle":Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;
    :cond_1
    if-ge p2, v5, :cond_3

    .line 1291
    const/high16 v2, -0x40800000    # -1.0f

    int-to-float v3, p2

    div-float/2addr v3, v4

    add-float v1, v2, v3

    .line 1301
    .local v1, "level":F
    :goto_1
    iget-object v2, v0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;->listener:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;

    new-instance v3, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    invoke-direct {v3, p2, v1}, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;-><init>(IF)V

    invoke-interface {v2, v3}, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;->onProgressChanged(Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;)V

    .line 1305
    .end local v0    # "handle":Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;
    .end local v1    # "level":F
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelSeekBarDrawable:Lcom/oneplus/gallery/drawable/ProgressDrawable;

    if-eqz v2, :cond_0

    .line 1306
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelSeekBarDrawable:Lcom/oneplus/gallery/drawable/ProgressDrawable;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    invoke-virtual {v2, p2, v3}, Lcom/oneplus/gallery/drawable/ProgressDrawable;->notifyProgressChanged(II)V

    goto :goto_0

    .line 1292
    .restart local v0    # "handle":Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;
    :cond_3
    if-le p2, v7, :cond_4

    .line 1293
    add-int/lit8 v2, p2, -0x3c

    int-to-float v2, v2

    div-float v1, v2, v4

    .restart local v1    # "level":F
    goto :goto_1

    .line 1295
    .end local v1    # "level":F
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "level":F
    goto :goto_1

    .line 1298
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
    .line 1325
    if-eqz p1, :cond_0

    .line 1326
    const/16 v0, 0x2710

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 1327
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

    .line 1346
    iget-boolean v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_SaveModificationWhenReady:Z

    if-eqz v2, :cond_0

    .line 1348
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v2, "save() - Already scheduled to save"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    :goto_0
    return v0

    .line 1353
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->cancelTempOriginalPreview()V

    .line 1356
    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->canAlwaysSave()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_IsModified:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 1357
    goto :goto_0

    .line 1360
    :cond_1
    iput-boolean p2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ExitAfterSaving:Z

    .line 1361
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery2/editor/MediaEditor$State;->READY:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    if-ne v2, v3, :cond_4

    .line 1362
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    if-eqz p1, :cond_3

    :goto_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->canAlwaysSave()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->save(I)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 1363
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v2, "save() - Start saving when state of editor changes to READY"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    iput-boolean v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_SaveModificationWhenReady:Z

    .line 1365
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->setProcessingDialogVisibility(Z)V

    goto :goto_0
.end method

.method private setClippingOnlyProp(Z)Z
    .locals 3
    .param p1, "clippingOnly"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1394
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->verifyAccess()V

    .line 1397
    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->updateToolbarButtonStatus()V

    .line 1398
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->updatePreviewImageBounds(Z)V

    .line 1401
    sget-object v1, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_CLIPPING_ONLY:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-super {p0, v1, v2}, Lcom/oneplus/gallery2/GalleryFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1402
    const/4 v0, 0x0

    .line 1409
    :cond_0
    :goto_0
    return v0

    .line 1405
    :cond_1
    if-eqz p1, :cond_0

    .line 1406
    const-class v1, Lcom/oneplus/gallery2/editor/CropEditorMode;

    invoke-direct {p0, v1, v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->changeEditorMode(Ljava/lang/Class;Z)V

    goto :goto_0
.end method

.method private setFixedCropModeProp(Lcom/oneplus/gallery/crop/CropMode;)Z
    .locals 2
    .param p1, "cropMode"    # Lcom/oneplus/gallery/crop/CropMode;

    .prologue
    const/4 v0, 0x1

    .line 1416
    sget-object v1, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_FIXED_CROP_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v1, p1}, Lcom/oneplus/gallery2/GalleryFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1418
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->updatePreviewImageBounds(Z)V

    .line 1419
    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->updateToolbarButtonStatus()V

    .line 1422
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMediaProp(Lcom/oneplus/gallery2/media/PhotoMedia;)Z
    .locals 6
    .param p1, "media"    # Lcom/oneplus/gallery2/media/PhotoMedia;

    .prologue
    const/4 v2, 0x0

    .line 1430
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->verifyAccess()V

    .line 1433
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v4, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/PhotoMedia;

    .line 1434
    .local v1, "prevMedia":Lcom/oneplus/gallery2/media/PhotoMedia;
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v4, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4, p1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1461
    :goto_0
    return v2

    .line 1438
    :cond_0
    if-eqz p1, :cond_3

    .line 1440
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/PhotoMedia;->peekSize()Landroid/util/Size;

    move-result-object v0

    .line 1441
    .local v0, "mediaSize":Landroid/util/Size;
    if-eqz v0, :cond_1

    .line 1443
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v3, "setMediaProp() - Media size is ready"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->onMediaSizeObtained(Lcom/oneplus/gallery2/media/Media;Landroid/util/Size;)V

    .line 1461
    .end local v0    # "mediaSize":Landroid/util/Size;
    :goto_1
    sget-object v2, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v1, p1}, Lcom/oneplus/gallery2/PhotoEditorFragment;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 1448
    .restart local v0    # "mediaSize":Landroid/util/Size;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_MediaSizeCallback:Lcom/oneplus/gallery2/media/Media$SizeCallback;

    invoke-interface {p1, v3}, Lcom/oneplus/gallery2/media/PhotoMedia;->getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1449
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v3, "setMediaProp() - Waiting for size obtaining"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1452
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMediaProp() - Fail to obtain size of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v2, v2}, Landroid/util/Size;-><init>(II)V

    invoke-direct {p0, p1, v3}, Lcom/oneplus/gallery2/PhotoEditorFragment;->onMediaSizeObtained(Lcom/oneplus/gallery2/media/Media;Landroid/util/Size;)V

    goto :goto_1

    .line 1458
    .end local v0    # "mediaSize":Landroid/util/Size;
    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->onMediaSizeObtained(Lcom/oneplus/gallery2/media/Media;Landroid/util/Size;)V

    goto :goto_1
.end method

.method private setProgressControlsVisibility(ZZ)V
    .locals 3
    .param p1, "isVisible"    # Z
    .param p2, "animation"    # Z

    .prologue
    .line 1510
    iget-boolean v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_IsProgressControlsVisible:Z

    if-ne v0, p1, :cond_0

    .line 1518
    :goto_0
    return-void

    .line 1513
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v1, "setProgressControlsVisibility() - Visible: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1516
    iput-boolean p1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_IsProgressControlsVisible:Z

    .line 1517
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->updateProgressControlsVisibility(Z)V

    goto :goto_0
.end method

.method private showControlPanel(Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;

    .prologue
    const/16 v3, 0x6e

    const/4 v2, 0x1

    .line 1588
    iget-boolean v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_IsViewCreated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1603
    :cond_0
    :goto_0
    return-void

    .line 1592
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1593
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelSeekBar:Landroid/widget/SeekBar;

    iget v1, p1, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;->progress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1594
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelLabel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1595
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelSeekBarDrawable:Lcom/oneplus/gallery/drawable/ProgressDrawable;

    iget-object v1, p1, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;->type:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/drawable/ProgressDrawable;->setProgressType(Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;)V

    .line 1596
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelSeekBarDrawable:Lcom/oneplus/gallery/drawable/ProgressDrawable;

    iget v1, p1, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;->progress:I

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery/drawable/ProgressDrawable;->notifyProgressChanged(II)V

    .line 1597
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_OnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1598
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelPositiveButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_OnPositiveButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1599
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelNegativeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_OnNegativeButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1602
    invoke-direct {p0, v2, v2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->setProgressControlsVisibility(ZZ)V

    goto :goto_0
.end method

.method private showTempOriginalPreview()V
    .locals 1

    .prologue
    .line 1610
    iget-boolean v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ShowTempOriginalPreview:Z

    if-eqz v0, :cond_0

    .line 1615
    :goto_0
    return-void

    .line 1614
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery2/editor/EditorMode;

    invoke-interface {v0}, Lcom/oneplus/gallery2/editor/EditorMode;->showTempOriginalPreview()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ShowTempOriginalPreview:Z

    goto :goto_0
.end method

.method private updateBackgoundHeaderHeight()V
    .locals 4

    .prologue
    .line 1622
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    .line 1623
    .local v0, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    invoke-virtual {v0}, Lcom/oneplus/gallery2/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1626
    .local v1, "headerHeight":I
    sget-object v2, Lcom/oneplus/gallery2/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/ScreenSize;

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 1629
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_BackgroundHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1630
    return-void
.end method

.method private updateControlUIMargins()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1636
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1656
    :cond_0
    :goto_0
    return-void

    .line 1638
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    .line 1639
    .local v0, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    if-eqz v0, :cond_0

    .line 1641
    sget-object v2, Lcom/oneplus/gallery2/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/ScreenSize;

    .line 1642
    .local v1, "screenSize":Lcom/oneplus/base/ScreenSize;
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1644
    sget-object v2, Lcom/oneplus/gallery2/GalleryActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1650
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    invoke-virtual {v1}, Lcom/oneplus/base/ScreenSize;->getNavigationBarSize()I

    move-result v3

    invoke-static {v2, v4, v4, v4, v3}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    goto :goto_0

    .line 1647
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    invoke-virtual {v1}, Lcom/oneplus/base/ScreenSize;->getNavigationBarSize()I

    move-result v3

    invoke-static {v2, v4, v4, v3, v4}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    goto :goto_0

    .line 1655
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    invoke-static {v2, v4, v4, v4, v4}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    goto :goto_0

    .line 1644
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
    .line 1662
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/gallery2/PhotoEditorFragment;->updatePreviewImageBounds(ZJ)V

    .line 1663
    return-void
.end method

.method private updatePreviewImageBounds(ZJ)V
    .locals 20
    .param p1, "disableLayoutAnimation"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 1667
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_2

    .line 1669
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

    .line 1708
    :cond_0
    :goto_1
    return-void

    .line 1669
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1674
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageContainer:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    if-eqz v2, :cond_0

    .line 1679
    sget-object v2, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_CLIPPING_ONLY:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 1680
    .local v11, "clippingOnly":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery2/editor/EditorMode;

    instance-of v2, v2, Lcom/oneplus/gallery2/editor/DrawingEditorMode;

    if-nez v2, :cond_9

    .line 1683
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v12

    .line 1684
    .local v12, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 1685
    .local v16, "res":Landroid/content/res/Resources;
    sget-object v2, Lcom/oneplus/gallery2/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v12, v2}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/oneplus/base/ScreenSize;

    .line 1686
    .local v18, "screenSize":Lcom/oneplus/base/ScreenSize;
    sget-object v2, Lcom/oneplus/gallery2/GalleryActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v12, v2}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    const/4 v13, 0x1

    .line 1687
    .local v13, "isLandscape":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/base/ScreenSize;->getNavigationBarSize()I

    move-result v15

    .line 1688
    .local v15, "navBarHeight":I
    :goto_3
    const v2, 0x7f0500cd

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 1689
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

    .line 1690
    .local v19, "top":I
    const v2, 0x7f0500ce

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-eqz v13, :cond_7

    move v2, v15

    :goto_4
    add-int v17, v3, v2

    .line 1692
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

    .line 1704
    .end local v12    # "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    .end local v13    # "isLandscape":Z
    .end local v16    # "res":Landroid/content/res/Resources;
    .end local v18    # "screenSize":Lcom/oneplus/base/ScreenSize;
    .local v10, "bottom":I
    :goto_6
    if-eqz p1, :cond_4

    .line 1705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageContainer:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->setLayoutAnimationEnabled(Z)V

    .line 1706
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageContainer:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v2, v14, v0, v1, v10}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->setPadding(IIII)V

    .line 1707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageContainer:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->setLayoutAnimationEnabled(Z)V

    goto/16 :goto_1

    .line 1686
    .end local v10    # "bottom":I
    .end local v14    # "left":I
    .end local v17    # "right":I
    .end local v19    # "top":I
    .restart local v12    # "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    .restart local v16    # "res":Landroid/content/res/Resources;
    .restart local v18    # "screenSize":Lcom/oneplus/base/ScreenSize;
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 1687
    .restart local v13    # "isLandscape":Z
    :cond_6
    const/4 v15, 0x0

    goto :goto_3

    .line 1690
    .restart local v14    # "left":I
    .restart local v15    # "navBarHeight":I
    .restart local v19    # "top":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 1692
    .restart local v17    # "right":I
    :cond_8
    const v2, 0x7f050052

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_5

    .line 1699
    .end local v12    # "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    .end local v13    # "isLandscape":Z
    .end local v14    # "left":I
    .end local v15    # "navBarHeight":I
    .end local v16    # "res":Landroid/content/res/Resources;
    .end local v17    # "right":I
    .end local v18    # "screenSize":Lcom/oneplus/base/ScreenSize;
    .end local v19    # "top":I
    :cond_9
    const/4 v14, 0x0

    .line 1700
    .restart local v14    # "left":I
    const/16 v19, 0x0

    .line 1701
    .restart local v19    # "top":I
    const/16 v17, 0x0

    .line 1702
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

    .line 1715
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1803
    :goto_0
    :pswitch_0
    return-void

    .line 1719
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_IsProgressControlsVisible:Z

    if-eqz v1, :cond_2

    .line 1721
    if-eqz p1, :cond_1

    .line 1723
    sget-object v1, Lcom/oneplus/gallery2/PhotoEditorFragment$31;->$SwitchMap$com$oneplus$gallery2$editor$ViewVisibilityState:[I

    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelVisibilityState:Lcom/oneplus/gallery2/editor/ViewVisibilityState;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/editor/ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1738
    :goto_1
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/PhotoEditorFragment$28;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$28;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/PhotoEditorFragment$27;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$27;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 1726
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1727
    .local v0, "diffY":I
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1728
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1729
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1735
    .end local v0    # "diffY":I
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_1

    .line 1756
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1757
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1758
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1759
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1760
    sget-object v1, Lcom/oneplus/gallery2/editor/ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery2/editor/ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelVisibilityState:Lcom/oneplus/gallery2/editor/ViewVisibilityState;

    goto :goto_0

    .line 1765
    :cond_2
    if-eqz p1, :cond_3

    .line 1767
    sget-object v1, Lcom/oneplus/gallery2/PhotoEditorFragment$31;->$SwitchMap$com$oneplus$gallery2$editor$ViewVisibilityState:[I

    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelVisibilityState:Lcom/oneplus/gallery2/editor/ViewVisibilityState;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/editor/ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 1778
    :goto_2
    :pswitch_3
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1779
    .restart local v0    # "diffY":I
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/PhotoEditorFragment$30;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$30;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/PhotoEditorFragment$29;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$29;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 1775
    .end local v0    # "diffY":I
    :pswitch_4
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_2

    .line 1798
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1799
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1800
    sget-object v1, Lcom/oneplus/gallery2/editor/ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery2/editor/ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelVisibilityState:Lcom/oneplus/gallery2/editor/ViewVisibilityState;

    goto/16 :goto_0

    .line 1723
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1767
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
    .line 1810
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_SaveButton:Landroid/view/MenuItem;

    if-nez v1, :cond_0

    .line 1818
    :goto_0
    return-void

    .line 1814
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->canAlwaysSave()Z

    move-result v0

    .line 1815
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    if-eqz v1, :cond_1

    .line 1816
    iget-boolean v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_IsModified:Z

    or-int/2addr v0, v1

    .line 1817
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_SaveButton:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateSaveButtonTitle()V
    .locals 2

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_SaveButton:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    .line 1830
    :goto_0
    return-void

    .line 1829
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_SaveButton:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getSaveTitleRes()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateToolbarButtonStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1837
    iget-boolean v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_IsViewCreated:Z

    if-nez v0, :cond_1

    .line 1864
    :cond_0
    :goto_0
    return-void

    .line 1841
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_CLIPPING_ONLY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1842
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PrimaryToolBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1847
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_FilterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1848
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ColorFilterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1849
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_CropButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1850
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_RotateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1851
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_DrawingButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1854
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery2/editor/EditorMode;

    instance-of v0, v0, Lcom/oneplus/gallery2/editor/CropEditorMode;

    if-eqz v0, :cond_3

    .line 1855
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_CropButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 1844
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PrimaryToolBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1856
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery2/editor/EditorMode;

    instance-of v0, v0, Lcom/oneplus/gallery2/editor/RotateEditorMode;

    if-eqz v0, :cond_4

    .line 1857
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_RotateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 1858
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery2/editor/EditorMode;

    instance-of v0, v0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;

    if-eqz v0, :cond_5

    .line 1859
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ColorFilterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 1860
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery2/editor/EditorMode;

    instance-of v0, v0, Lcom/oneplus/gallery2/editor/FilterEditorMode;

    if-eqz v0, :cond_6

    .line 1861
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_FilterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 1862
    :cond_6
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery2/editor/EditorMode;

    instance-of v0, v0, Lcom/oneplus/gallery2/editor/DrawingEditorMode;

    if-eqz v0, :cond_0

    .line 1863
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_DrawingButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0
.end method


# virtual methods
.method public disablePreviewImageGesture(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 532
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    if-nez v0, :cond_0

    .line 537
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    sget-object v1, Lcom/oneplus/gallery2/PhotoEditorFragment;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    sget-object v2, Lcom/oneplus/widget/ScaleImageView;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v1, p1, v2}, Lcom/oneplus/base/BitFlagsGroup;->convertFlags(ILcom/oneplus/base/BitFlagsGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->disableGestures(I)V

    goto :goto_0
.end method

.method public enablePreviewImageGesture()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    if-nez v0, :cond_0

    .line 551
    :goto_0
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->enableGestures()V

    goto :goto_0
.end method

.method public exit()V
    .locals 4

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->verifyAccess()V

    .line 563
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    .line 564
    .local v0, "activity":Lcom/oneplus/gallery2/GalleryActivity;
    iget-boolean v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_IsModified:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->canAlwaysSave()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 566
    :cond_0
    if-eqz v0, :cond_1

    .line 568
    new-instance v1, Lcom/oneplus/gallery2/PhotoEditorFragment$13;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/gallery2/PhotoEditorFragment$13;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;Lcom/oneplus/gallery2/GalleryActivity;)V

    .line 603
    .local v1, "fragment":Lcom/oneplus/gallery2/GalleryDialogFragment;
    const-string v2, "PhotoEditorFragment.ConfirmExiting"

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/gallery2/GalleryDialogFragment;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    .line 612
    .end local v1    # "fragment":Lcom/oneplus/gallery2/GalleryDialogFragment;
    :goto_0
    return-void

    .line 607
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v3, "exit() - Media has been modified, but no activity to show dialog"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :cond_2
    invoke-virtual {v0}, Lcom/oneplus/gallery2/GalleryActivity;->finish()V

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
    .line 620
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    .line 628
    :goto_0
    return-object v0

    .line 622
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_OUTPUT_FORMAT:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_OUTPUT_FORMAT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 624
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_OUTPUT_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 625
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_OUTPUT_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 626
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 627
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 628
    :cond_3
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhotoEditor()Lcom/oneplus/gallery2/editor/PhotoEditor;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 653
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 669
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->handleMessage(Landroid/os/Message;)V

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 656
    :sswitch_0
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_StatusBarHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/oneplus/gallery2/Gallery;->setStatusBarVisibility(ZI)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_StatusBarHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 661
    :sswitch_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->showControlUI()V

    goto :goto_0

    .line 665
    :sswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1

    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->updatePreviewImageBounds(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 653
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

    .line 679
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 696
    :goto_0
    return-void

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_NavBarHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 684
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/oneplus/gallery2/Gallery;->setNavigationBarVisibility(ZI)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_NavBarHandle:Lcom/oneplus/base/Handle;

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/PhotoEditorFragment$14;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$14;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 695
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method protected onAttachToGallery(Lcom/oneplus/gallery2/Gallery;)V
    .locals 2
    .param p1, "gallery"    # Lcom/oneplus/gallery2/Gallery;

    .prologue
    .line 704
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_IsNavigationBarVisibleCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/Gallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 705
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 713
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->onCreate(Landroid/os/Bundle;)V

    .line 714
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

    .line 722
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v6, "onCreateView()"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const v3, 0x7f030014

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 728
    .local v0, "baseView":Landroid/view/View;
    const v3, 0x7f06005a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_BackgroundHeader:Landroid/view/View;

    .line 729
    const v3, 0x7f060057

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    iput-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageContainer:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    .line 730
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageContainer:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    const v6, 0x7f060058

    invoke-virtual {v3, v6}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/widget/ScaleImageView;

    iput-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    .line 731
    const v3, 0x7f060059

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    .line 732
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    const v6, 0x7f060005

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar;

    iput-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_TitleBar:Landroid/widget/Toolbar;

    .line 733
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    const v6, 0x7f06005b

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PrimaryToolBar:Landroid/view/View;

    .line 734
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PrimaryToolBar:Landroid/view/View;

    const v6, 0x7f06005e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_FilterButton:Landroid/widget/ImageButton;

    .line 735
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PrimaryToolBar:Landroid/view/View;

    const v6, 0x7f06005f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ColorFilterButton:Landroid/widget/ImageButton;

    .line 736
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PrimaryToolBar:Landroid/view/View;

    const v6, 0x7f06005d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_CropButton:Landroid/widget/ImageButton;

    .line 737
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PrimaryToolBar:Landroid/view/View;

    const v6, 0x7f06005c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_RotateButton:Landroid/widget/ImageButton;

    .line 738
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PrimaryToolBar:Landroid/view/View;

    const v6, 0x7f060060

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_DrawingButton:Landroid/widget/ImageButton;

    .line 739
    const v3, 0x7f060061

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorModeContainer:Landroid/view/View;

    .line 742
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageContainer:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    new-instance v6, Lcom/oneplus/gallery2/PhotoEditorFragment$15;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$15;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-virtual {v3, v6}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->setPaddingAnimationListener(Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$PaddingAnimationListener;)V

    .line 758
    iget-object v6, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v7, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_PREVIEW_DRAWABLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v7}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v3}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 759
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    new-instance v6, Lcom/oneplus/gallery2/PhotoEditorFragment$16;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$16;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-virtual {v3, v6}, Lcom/oneplus/widget/ScaleImageView;->addOnStateChangedCallback(Lcom/oneplus/widget/ScaleImageView$StateCallback;)V

    .line 769
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    new-instance v6, Lcom/oneplus/gallery2/PhotoEditorFragment$17;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$17;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-virtual {v3, v6}, Lcom/oneplus/widget/ScaleImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 779
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_TitleBar:Landroid/widget/Toolbar;

    const v6, 0x7f0b0004

    invoke-virtual {v3, v6}, Landroid/widget/Toolbar;->inflateMenu(I)V

    .line 780
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_TitleBar:Landroid/widget/Toolbar;

    const v6, 0x7f020060

    invoke-virtual {v3, v6}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 781
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_TitleBar:Landroid/widget/Toolbar;

    new-instance v6, Lcom/oneplus/gallery2/PhotoEditorFragment$18;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$18;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_TitleBar:Landroid/widget/Toolbar;

    new-instance v6, Lcom/oneplus/gallery2/PhotoEditorFragment$19;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$19;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 799
    iget-object v6, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_TitleBar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v3

    sget-object v7, Lcom/oneplus/gallery2/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v7}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/ScreenSize;

    invoke-virtual {v3}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v3

    invoke-static {v6, v5, v3, v5, v5}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    .line 800
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_TitleBar:Landroid/widget/Toolbar;

    invoke-virtual {v3}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v6, 0x7f0600a1

    invoke-interface {v3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_SaveButton:Landroid/view/MenuItem;

    .line 801
    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->updateSaveButtonTitle()V

    .line 802
    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->updateSaveButtonState()V

    .line 805
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_CropButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/oneplus/gallery2/PhotoEditorFragment$20;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$20;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 815
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_RotateButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/oneplus/gallery2/PhotoEditorFragment$21;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$21;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 825
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ColorFilterButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/oneplus/gallery2/PhotoEditorFragment$22;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$22;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 835
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_FilterButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/oneplus/gallery2/PhotoEditorFragment$23;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$23;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 845
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_DrawingButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/oneplus/gallery2/PhotoEditorFragment$24;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$24;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 855
    iput-boolean v4, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_IsViewCreated:Z

    .line 858
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->showControlUI()V

    .line 861
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorModes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/editor/EditorMode;

    .line 862
    .local v1, "editorMode":Lcom/oneplus/gallery2/editor/EditorMode;
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorModeContainer:Landroid/view/View;

    invoke-interface {v1, v3}, Lcom/oneplus/gallery2/editor/EditorMode;->onCreateView(Landroid/view/View;)V

    goto :goto_0

    .line 865
    .end local v1    # "editorMode":Lcom/oneplus/gallery2/editor/EditorMode;
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery2/editor/EditorMode;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorMode:Lcom/oneplus/gallery2/editor/EditorMode;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    :goto_1
    iget-boolean v6, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_IsInitialEditorMode:Z

    if-nez v6, :cond_2

    :goto_2
    invoke-direct {p0, v3, v4}, Lcom/oneplus/gallery2/PhotoEditorFragment;->changeEditorMode(Ljava/lang/Class;Z)V

    .line 866
    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->updateBackgoundHeaderHeight()V

    .line 867
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v4, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/oneplus/gallery2/PhotoEditorFragment;->onEditorModificationStateChanged(Z)V

    .line 870
    return-object v0

    .line 865
    :cond_1
    const-class v3, Lcom/oneplus/gallery2/editor/RotateEditorMode;

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 879
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/PhotoEditorFragment;->setProcessingDialogVisibility(Z)V

    .line 882
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorModes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/editor/EditorMode;

    .line 883
    .local v0, "editorMode":Lcom/oneplus/gallery2/editor/EditorMode;
    invoke-interface {v0}, Lcom/oneplus/gallery2/editor/EditorMode;->release()V

    goto :goto_0

    .line 886
    .end local v0    # "editorMode":Lcom/oneplus/gallery2/editor/EditorMode;
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    invoke-virtual {v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->release()V

    .line 889
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v1

    .line 890
    .local v1, "gallery":Lcom/oneplus/gallery2/Gallery;
    if-eqz v1, :cond_1

    .line 891
    sget-object v3, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_IsNavigationBarVisibleCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/gallery2/Gallery;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 894
    :cond_1
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onDestroy()V

    .line 895
    return-void
.end method

.method public onDestroyView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 902
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v3, "onDestroyView"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iput-object v4, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_CropButton:Landroid/widget/ImageButton;

    .line 906
    iput-object v4, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_RotateButton:Landroid/widget/ImageButton;

    .line 907
    iput-object v4, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_DrawingButton:Landroid/widget/ImageButton;

    .line 908
    iput-object v4, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PrimaryToolBar:Landroid/view/View;

    .line 909
    iput-object v4, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_SaveButton:Landroid/view/MenuItem;

    .line 910
    iput-object v4, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_TitleBar:Landroid/widget/Toolbar;

    .line 911
    iput-object v4, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    .line 912
    iput-object v4, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageContainer:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    .line 915
    iput-object v4, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    .line 916
    iput-boolean v5, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_IsProgressControlsVisible:Z

    .line 917
    sget-object v2, Lcom/oneplus/gallery2/editor/ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery2/editor/ViewVisibilityState;

    iput-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelVisibilityState:Lcom/oneplus/gallery2/editor/ViewVisibilityState;

    .line 920
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_EditorModes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/editor/EditorMode;

    .line 921
    .local v0, "editorMode":Lcom/oneplus/gallery2/editor/EditorMode;
    invoke-interface {v0}, Lcom/oneplus/gallery2/editor/EditorMode;->onDestroyView()V

    goto :goto_0

    .line 924
    .end local v0    # "editorMode":Lcom/oneplus/gallery2/editor/EditorMode;
    :cond_0
    iput-boolean v5, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_IsViewCreated:Z

    .line 927
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onDestroyView()V

    .line 928
    return-void
.end method

.method protected onNavigationBarVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 1184
    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->updateControlUIMargins()V

    .line 1187
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->updatePreviewImageBounds(Z)V

    .line 1188
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1205
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    .line 1206
    .local v0, "gallery":Lcom/oneplus/gallery2/Gallery;
    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_StatusBarVisibilityChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/Gallery;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1207
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_StatusBarHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_StatusBarHandle:Lcom/oneplus/base/Handle;

    .line 1208
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1211
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onPause()V

    .line 1212
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1261
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onResume()V

    .line 1264
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    .line 1265
    .local v0, "gallery":Lcom/oneplus/gallery2/Gallery;
    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_StatusBarVisibilityChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/Gallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1266
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/Gallery;->setStatusBarVisibility(ZI)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_StatusBarHandle:Lcom/oneplus/base/Handle;

    .line 1267
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1315
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onStart()V

    .line 1318
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_USE_LESS_MEMORY:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1319
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_USE_LESS_MEMORY:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1338
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onStop()V

    .line 1339
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
    .line 1374
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_CLIPPING_ONLY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 1375
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->setClippingOnlyProp(Z)Z

    move-result v0

    .line 1386
    :goto_0
    return v0

    .line 1376
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_FIXED_CROP_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 1377
    check-cast p2, Lcom/oneplus/gallery/crop/CropMode;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->setFixedCropModeProp(Lcom/oneplus/gallery/crop/CropMode;)Z

    move-result v0

    goto :goto_0

    .line 1378
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 1379
    check-cast p2, Lcom/oneplus/gallery2/media/PhotoMedia;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->setMediaProp(Lcom/oneplus/gallery2/media/PhotoMedia;)Z

    move-result v0

    goto :goto_0

    .line 1380
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_OUTPUT_FORMAT:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 1381
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_OUTPUT_FORMAT:Lcom/oneplus/base/PropertyKey;

    check-cast p2, Landroid/graphics/Bitmap$CompressFormat;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {v0, v1, p2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1382
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_OUTPUT_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 1383
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_OUTPUT_SIZE:Lcom/oneplus/base/PropertyKey;

    check-cast p2, Landroid/util/Size;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {v0, v1, p2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1384
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_4
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 1385
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    check-cast p2, Landroid/net/Uri;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {v0, v1, p2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1386
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/GalleryFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setPreviewImageBoundsChangeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->isImageBoundsChangeEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 1480
    :cond_0
    :goto_0
    return-void

    .line 1476
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v1, "setPreviewImageBoundsChangeEnabled() - Enable: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1479
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PreviewImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/ScaleImageView;->setImageBoundsChangeEnabled(Z)V

    goto :goto_0
.end method

.method public setProcessingDialogVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 1486
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    if-nez v1, :cond_1

    .line 1503
    :cond_0
    :goto_0
    return-void

    .line 1488
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/editor/MediaEditor$State;

    .line 1489
    .local v0, "state":Lcom/oneplus/gallery2/editor/MediaEditor$State;
    if-eqz p1, :cond_5

    .line 1491
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ProcessingDialog:Lcom/oneplus/gallery2/ui/ProcessingDialog;

    if-nez v1, :cond_2

    .line 1492
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v1

    const-class v2, Lcom/oneplus/gallery2/ui/ProcessingDialog;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/Gallery;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/ui/ProcessingDialog;

    iput-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ProcessingDialog:Lcom/oneplus/gallery2/ui/ProcessingDialog;

    .line 1493
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ProcessingDialog:Lcom/oneplus/gallery2/ui/ProcessingDialog;

    if-eqz v1, :cond_4

    .line 1495
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1496
    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ProcessingDialog:Lcom/oneplus/gallery2/ui/ProcessingDialog;

    sget-object v1, Lcom/oneplus/gallery2/editor/MediaEditor$State;->PREPARING:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    if-ne v0, v1, :cond_3

    const v1, 0x7f09000c

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/oneplus/gallery2/ui/ProcessingDialog;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    :cond_3
    const v1, 0x7f09000d

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1499
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v2, "setProcessingDialogVisibility() - No ProcessingDialog interface"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1502
    :cond_5
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method public showControlPanel(ILjava/lang/String;Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "progress"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;
    .param p4, "listener"    # Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;

    .prologue
    .line 1545
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1546
    const/4 v0, 0x0

    .line 1580
    :cond_0
    :goto_0
    return-object v0

    .line 1549
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v6

    .line 1550
    .local v6, "activity":Lcom/oneplus/gallery2/GalleryActivity;
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    if-nez v1, :cond_2

    .line 1552
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    const v2, 0x7f060062

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    .line 1553
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    new-instance v2, Lcom/oneplus/gallery2/PhotoEditorFragment$26;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/PhotoEditorFragment$26;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1561
    new-instance v1, Lcom/oneplus/gallery/drawable/ProgressDrawable;

    invoke-direct {v1, v6}, Lcom/oneplus/gallery/drawable/ProgressDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelSeekBarDrawable:Lcom/oneplus/gallery/drawable/ProgressDrawable;

    .line 1562
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    const v2, 0x7f06006e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelSeekBar:Landroid/widget/SeekBar;

    .line 1563
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelSeekBarDrawable:Lcom/oneplus/gallery/drawable/ProgressDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1564
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    const v2, 0x7f060070

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelPositiveButton:Landroid/widget/ImageButton;

    .line 1565
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    const v2, 0x7f06006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelNegativeButton:Landroid/widget/ImageButton;

    .line 1566
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanel:Landroid/view/View;

    const v2, 0x7f060071

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelLabel:Landroid/widget/TextView;

    .line 1570
    :cond_2
    new-instance v0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;ILjava/lang/String;Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;)V

    .line 1571
    .local v0, "handle":Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1573
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;

    const-string v2, "showControlPanel() - Handle size: "

    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1576
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1577
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->showControlPanel(Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;)V

    goto/16 :goto_0
.end method

.method public showControlUI()V
    .locals 4

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1537
    :goto_0
    return-void

    .line 1529
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_NavBarHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_NavBarHandle:Lcom/oneplus/base/Handle;

    .line 1532
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1533
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlUIContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1536
    invoke-direct {p0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->updateControlUIMargins()V

    goto :goto_0
.end method
