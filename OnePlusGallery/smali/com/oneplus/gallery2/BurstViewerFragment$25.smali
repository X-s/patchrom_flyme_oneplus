.class synthetic Lcom/oneplus/gallery2/BurstViewerFragment$25;
.super Ljava/lang/Object;
.source "BurstViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/BurstViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oneplus$gallery2$BurstViewerFragment$FilmstripState:[I

.field static final synthetic $SwitchMap$com$oneplus$gallery2$BurstViewerFragment$ThumbnailQuality:[I

.field static final synthetic $SwitchMap$com$oneplus$gallery2$BurstViewerFragment$ViewVisibilityState:[I

.field static final synthetic $SwitchMap$com$oneplus$gallery2$FilmstripFragment$ImageDecodeState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2725
    invoke-static {}, Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;->values()[Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$25;->$SwitchMap$com$oneplus$gallery2$BurstViewerFragment$ViewVisibilityState:[I

    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$25;->$SwitchMap$com$oneplus$gallery2$BurstViewerFragment$ViewVisibilityState:[I

    sget-object v1, Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$25;->$SwitchMap$com$oneplus$gallery2$BurstViewerFragment$ViewVisibilityState:[I

    sget-object v1, Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$25;->$SwitchMap$com$oneplus$gallery2$BurstViewerFragment$ViewVisibilityState:[I

    sget-object v1, Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$25;->$SwitchMap$com$oneplus$gallery2$BurstViewerFragment$ViewVisibilityState:[I

    sget-object v1, Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    .line 2064
    :goto_3
    invoke-static {}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;->values()[Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$25;->$SwitchMap$com$oneplus$gallery2$BurstViewerFragment$FilmstripState:[I

    :try_start_4
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$25;->$SwitchMap$com$oneplus$gallery2$BurstViewerFragment$FilmstripState:[I

    sget-object v1, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$25;->$SwitchMap$com$oneplus$gallery2$BurstViewerFragment$FilmstripState:[I

    sget-object v1, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;->VIEW_DETAILS:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$25;->$SwitchMap$com$oneplus$gallery2$BurstViewerFragment$FilmstripState:[I

    sget-object v1, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;->BACKGROUND:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    .line 1636
    :goto_6
    invoke-static {}, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->values()[Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$25;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$ImageDecodeState:[I

    :try_start_7
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$25;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$ImageDecodeState:[I

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->SMALL_THUMB_DECODED:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    .line 600
    :goto_7
    invoke-static {}, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailQuality;->values()[Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailQuality;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$25;->$SwitchMap$com$oneplus$gallery2$BurstViewerFragment$ThumbnailQuality:[I

    :try_start_8
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$25;->$SwitchMap$com$oneplus$gallery2$BurstViewerFragment$ThumbnailQuality:[I

    sget-object v1, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailQuality;->LOW:Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailQuality;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$25;->$SwitchMap$com$oneplus$gallery2$BurstViewerFragment$ThumbnailQuality:[I

    sget-object v1, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailQuality;->NORMAL:Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailQuality;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    return-void

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    .line 1636
    :catch_2
    move-exception v0

    goto :goto_7

    .line 2064
    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_4

    .line 2725
    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_2

    :catch_8
    move-exception v0

    goto/16 :goto_1

    :catch_9
    move-exception v0

    goto/16 :goto_0
.end method
