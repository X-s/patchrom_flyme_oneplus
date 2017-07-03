.class synthetic Lcom/oneplus/gallery2/FilmstripFragment$30;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/FilmstripFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oneplus$gallery2$FilmstripFragment$FilmstripState:[I

.field static final synthetic $SwitchMap$com$oneplus$gallery2$FilmstripFragment$ImageDecodeState:[I

.field static final synthetic $SwitchMap$com$oneplus$gallery2$FilmstripFragment$ThumbnailQuality:[I

.field static final synthetic $SwitchMap$com$oneplus$gallery2$FilmstripFragment$ViewVisibilityState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3538
    invoke-static {}, Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;->values()[Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$ViewVisibilityState:[I

    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$ViewVisibilityState:[I

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$ViewVisibilityState:[I

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$ViewVisibilityState:[I

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$ViewVisibilityState:[I

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    .line 2699
    :goto_3
    invoke-static {}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->values()[Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$FilmstripState:[I

    :try_start_4
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$FilmstripState:[I

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$FilmstripState:[I

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->VIEW_DETAILS:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$FilmstripState:[I

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->BACKGROUND:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    .line 2292
    :goto_6
    invoke-static {}, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->values()[Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$ImageDecodeState:[I

    :try_start_7
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$ImageDecodeState:[I

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->NONE:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$ImageDecodeState:[I

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->SMALL_THUMB_DECODED:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    .line 675
    :goto_8
    invoke-static {}, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;->values()[Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$ThumbnailQuality:[I

    :try_start_9
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$ThumbnailQuality:[I

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;->LOW:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$ThumbnailQuality:[I

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;->NORMAL:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    return-void

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    .line 2292
    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    .line 2699
    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    .line 3538
    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    goto/16 :goto_2

    :catch_9
    move-exception v0

    goto/16 :goto_1

    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method
