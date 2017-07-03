.class synthetic Lcom/oneplus/gallery2/MediaSetPickerFragment$8;
.super Ljava/lang/Object;
.source "MediaSetPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/MediaSetPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oneplus$base$BaseFragment$State:[I

.field static final synthetic $SwitchMap$com$oneplus$gallery2$media$MediaType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 941
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaType;->values()[Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/gallery2/MediaSetPickerFragment$8;->$SwitchMap$com$oneplus$gallery2$media$MediaType:[I

    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/MediaSetPickerFragment$8;->$SwitchMap$com$oneplus$gallery2$media$MediaType:[I

    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/oneplus/gallery2/MediaSetPickerFragment$8;->$SwitchMap$com$oneplus$gallery2$media$MediaType:[I

    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    .line 808
    :goto_1
    invoke-static {}, Lcom/oneplus/base/BaseFragment$State;->values()[Lcom/oneplus/base/BaseFragment$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/gallery2/MediaSetPickerFragment$8;->$SwitchMap$com$oneplus$base$BaseFragment$State:[I

    :try_start_2
    sget-object v0, Lcom/oneplus/gallery2/MediaSetPickerFragment$8;->$SwitchMap$com$oneplus$base$BaseFragment$State:[I

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->RESUMING:Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/oneplus/gallery2/MediaSetPickerFragment$8;->$SwitchMap$com$oneplus$base$BaseFragment$State:[I

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->RUNNING:Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    .line 941
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
