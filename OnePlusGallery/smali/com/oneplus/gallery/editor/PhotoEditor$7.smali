.class synthetic Lcom/oneplus/gallery/editor/PhotoEditor$7;
.super Ljava/lang/Object;
.source "PhotoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/editor/PhotoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$graphics$Bitmap$CompressFormat:[I

.field static final synthetic $SwitchMap$com$oneplus$gallery$editor$MediaEditor$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1910
    invoke-static {}, Landroid/graphics/Bitmap$CompressFormat;->values()[Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditor$7;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    :try_start_0
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor$7;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor$7;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    .line 506
    :goto_1
    invoke-static {}, Lcom/oneplus/gallery/editor/MediaEditor$State;->values()[Lcom/oneplus/gallery/editor/MediaEditor$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditor$7;->$SwitchMap$com$oneplus$gallery$editor$MediaEditor$State:[I

    :try_start_2
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor$7;->$SwitchMap$com$oneplus$gallery$editor$MediaEditor$State:[I

    sget-object v1, Lcom/oneplus/gallery/editor/MediaEditor$State;->NONE:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor$7;->$SwitchMap$com$oneplus$gallery$editor$MediaEditor$State:[I

    sget-object v1, Lcom/oneplus/gallery/editor/MediaEditor$State;->READY:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor$7;->$SwitchMap$com$oneplus$gallery$editor$MediaEditor$State:[I

    sget-object v1, Lcom/oneplus/gallery/editor/MediaEditor$State;->PROCESSING_PREVIEW:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    .line 1910
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
