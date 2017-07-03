.class synthetic Lcom/oneplus/gallery/media/MediaManagerImpl$37;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oneplus$gallery$media$MediaSetList$Comparator:[I

.field static final synthetic $SwitchMap$com$oneplus$gallery$media$MediaType:[I

.field static final synthetic $SwitchMap$com$oneplus$gallery$media$OPMediaManager$SpecialDirectoryType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 4156
    invoke-static {}, Lcom/oneplus/gallery/media/MediaType;->values()[Lcom/oneplus/gallery/media/MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl$37;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    :try_start_0
    sget-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl$37;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    sget-object v1, Lcom/oneplus/gallery/media/MediaType;->PHOTO:Lcom/oneplus/gallery/media/MediaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl$37;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    sget-object v1, Lcom/oneplus/gallery/media/MediaType;->VIDEO:Lcom/oneplus/gallery/media/MediaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    .line 2409
    :goto_1
    invoke-static {}, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->values()[Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl$37;->$SwitchMap$com$oneplus$gallery$media$OPMediaManager$SpecialDirectoryType:[I

    :try_start_2
    sget-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl$37;->$SwitchMap$com$oneplus$gallery$media$OPMediaManager$SpecialDirectoryType:[I

    sget-object v1, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->APPLICATION_DATA:Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl$37;->$SwitchMap$com$oneplus$gallery$media$OPMediaManager$SpecialDirectoryType:[I

    sget-object v1, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->CAMERA:Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl$37;->$SwitchMap$com$oneplus$gallery$media$OPMediaManager$SpecialDirectoryType:[I

    sget-object v1, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->MUSIC:Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl$37;->$SwitchMap$com$oneplus$gallery$media$OPMediaManager$SpecialDirectoryType:[I

    sget-object v1, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->SCREENSHOT:Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    .line 1034
    :goto_5
    invoke-static {}, Lcom/oneplus/gallery/media/MediaSetList$Comparator;->values()[Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl$37;->$SwitchMap$com$oneplus$gallery$media$MediaSetList$Comparator:[I

    :try_start_6
    sget-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl$37;->$SwitchMap$com$oneplus$gallery$media$MediaSetList$Comparator:[I

    sget-object v1, Lcom/oneplus/gallery/media/MediaSetList$Comparator;->SYSTEM_ALBUM_DIRECTORY:Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl$37;->$SwitchMap$com$oneplus$gallery$media$MediaSetList$Comparator:[I

    sget-object v1, Lcom/oneplus/gallery/media/MediaSetList$Comparator;->SYSTEM_DATE:Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl$37;->$SwitchMap$com$oneplus$gallery$media$MediaSetList$Comparator:[I

    sget-object v1, Lcom/oneplus/gallery/media/MediaSetList$Comparator;->SYSTEM_NAME:Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    .line 2409
    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    .line 4156
    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_0
.end method
