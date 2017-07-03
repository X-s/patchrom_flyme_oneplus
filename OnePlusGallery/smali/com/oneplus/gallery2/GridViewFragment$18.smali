.class synthetic Lcom/oneplus/gallery2/GridViewFragment$18;
.super Ljava/lang/Object;
.source "GridViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/GridViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oneplus$base$BaseActivity$State:[I

.field static final synthetic $SwitchMap$com$oneplus$base$BaseFragment$State:[I

.field static final synthetic $SwitchMap$com$oneplus$gallery2$GridViewFragment$AutoScrollDirection:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2653
    invoke-static {}, Lcom/oneplus/base/BaseActivity$State;->values()[Lcom/oneplus/base/BaseActivity$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment$18;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment$18;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment$18;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    .line 339
    :goto_1
    invoke-static {}, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->values()[Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment$18;->$SwitchMap$com$oneplus$gallery2$GridViewFragment$AutoScrollDirection:[I

    :try_start_2
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment$18;->$SwitchMap$com$oneplus$gallery2$GridViewFragment$AutoScrollDirection:[I

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->DOWN:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment$18;->$SwitchMap$com$oneplus$gallery2$GridViewFragment$AutoScrollDirection:[I

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->DOWN_FAST:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment$18;->$SwitchMap$com$oneplus$gallery2$GridViewFragment$AutoScrollDirection:[I

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->UP:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment$18;->$SwitchMap$com$oneplus$gallery2$GridViewFragment$AutoScrollDirection:[I

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->UP_FAST:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 245
    :goto_5
    invoke-static {}, Lcom/oneplus/base/BaseFragment$State;->values()[Lcom/oneplus/base/BaseFragment$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment$18;->$SwitchMap$com$oneplus$base$BaseFragment$State:[I

    :try_start_6
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment$18;->$SwitchMap$com$oneplus$base$BaseFragment$State:[I

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->PAUSING:Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment$18;->$SwitchMap$com$oneplus$base$BaseFragment$State:[I

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->PAUSED:Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment$18;->$SwitchMap$com$oneplus$base$BaseFragment$State:[I

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->DESTROYING:Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment$18;->$SwitchMap$com$oneplus$base$BaseFragment$State:[I

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->DESTROYED:Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment$18;->$SwitchMap$com$oneplus$base$BaseFragment$State:[I

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->STOPPED:Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

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

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    .line 339
    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_2

    .line 2653
    :catch_9
    move-exception v0

    goto/16 :goto_1

    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method
