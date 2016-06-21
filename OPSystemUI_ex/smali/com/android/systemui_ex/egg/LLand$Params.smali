.class Lcom/android/systemui_ex/egg/LLand$Params;
.super Ljava/lang/Object;
.source "LLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/egg/LLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Params"
.end annotation


# instance fields
.field public BOOST_DV:I

.field public BUILDING_HEIGHT_MIN:I

.field public BUILDING_WIDTH_MAX:I

.field public BUILDING_WIDTH_MIN:I

.field public CLOUD_SIZE_MAX:I

.field public CLOUD_SIZE_MIN:I

.field public G:I

.field public HUD_Z:F

.field public MAX_V:I

.field public OBSTACLE_GAP:I

.field public OBSTACLE_MIN:I

.field public OBSTACLE_PERIOD:I

.field public OBSTACLE_SPACING:I

.field public OBSTACLE_STEM_WIDTH:I

.field public OBSTACLE_WIDTH:I

.field public OBSTACLE_Z:F

.field public PLAYER_HIT_SIZE:I

.field public PLAYER_SIZE:I

.field public PLAYER_Z:F

.field public PLAYER_Z_BOOST:F

.field public SCENERY_Z:F

.field public STAR_SIZE_MAX:I

.field public STAR_SIZE_MIN:I

.field public TRANSLATION_PER_SEC:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const v0, 0x7f0d00f4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->TRANSLATION_PER_SEC:F

    .line 100
    const v0, 0x7f0d00f3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_SPACING:I

    .line 101
    iget v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_SPACING:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui_ex/egg/LLand$Params;->TRANSLATION_PER_SEC:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_PERIOD:I

    .line 102
    const v0, 0x7f0d00f5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->BOOST_DV:I

    .line 103
    const v0, 0x7f0d00f6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->PLAYER_HIT_SIZE:I

    .line 104
    const v0, 0x7f0d00f7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->PLAYER_SIZE:I

    .line 105
    const v0, 0x7f0d00f8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_WIDTH:I

    .line 106
    const v0, 0x7f0d00f9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_STEM_WIDTH:I

    .line 107
    const v0, 0x7f0d00fa

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_GAP:I

    .line 108
    const v0, 0x7f0d00fb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_MIN:I

    .line 109
    const v0, 0x7f0d00fe

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->BUILDING_HEIGHT_MIN:I

    .line 110
    const v0, 0x7f0d00fc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->BUILDING_WIDTH_MIN:I

    .line 111
    const v0, 0x7f0d00fd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->BUILDING_WIDTH_MAX:I

    .line 112
    const v0, 0x7f0d00ff

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->CLOUD_SIZE_MIN:I

    .line 113
    const v0, 0x7f0d0100

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->CLOUD_SIZE_MAX:I

    .line 114
    const v0, 0x7f0d0103

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->STAR_SIZE_MIN:I

    .line 115
    const v0, 0x7f0d0104

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->STAR_SIZE_MAX:I

    .line 117
    const v0, 0x7f0d0105

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->G:I

    .line 118
    const v0, 0x7f0d0106

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->MAX_V:I

    .line 120
    const v0, 0x7f0d0107

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->SCENERY_Z:F

    .line 121
    const v0, 0x7f0d0108

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_Z:F

    .line 122
    const v0, 0x7f0d0109

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->PLAYER_Z:F

    .line 123
    const v0, 0x7f0d010a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->PLAYER_Z_BOOST:F

    .line 124
    const v0, 0x7f0d010b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->HUD_Z:F

    .line 127
    iget v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_MIN:I

    iget v1, p0, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_0

    .line 128
    const-string v0, "LLand"

    const-string v1, "error: obstacles might be too short, adjusting"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_MIN:I

    .line 131
    :cond_0
    return-void
.end method
