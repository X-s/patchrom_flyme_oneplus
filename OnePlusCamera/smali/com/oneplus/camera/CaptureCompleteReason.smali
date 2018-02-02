.class public final enum Lcom/oneplus/camera/CaptureCompleteReason;
.super Ljava/lang/Enum;
.source "CaptureCompleteReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/CaptureCompleteReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/CaptureCompleteReason;

.field public static final enum CANCELLED:Lcom/oneplus/camera/CaptureCompleteReason;

.field public static final enum INVALID_STATE:Lcom/oneplus/camera/CaptureCompleteReason;

.field public static final enum MAX_DURATION_REACHED:Lcom/oneplus/camera/CaptureCompleteReason;

.field public static final enum MAX_FILE_SIZE_REACHED:Lcom/oneplus/camera/CaptureCompleteReason;

.field public static final enum NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

.field public static final enum SAVING_QUEUE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

.field public static final enum STORAGE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

.field public static final enum UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/oneplus/camera/CaptureCompleteReason;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/CaptureCompleteReason;-><init>(Ljava/lang/String;I)V

    .line 11
    sput-object v0, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    .line 12
    new-instance v0, Lcom/oneplus/camera/CaptureCompleteReason;

    const-string/jumbo v1, "CANCELLED"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/CaptureCompleteReason;-><init>(Ljava/lang/String;I)V

    .line 15
    sput-object v0, Lcom/oneplus/camera/CaptureCompleteReason;->CANCELLED:Lcom/oneplus/camera/CaptureCompleteReason;

    .line 16
    new-instance v0, Lcom/oneplus/camera/CaptureCompleteReason;

    const-string/jumbo v1, "STORAGE_FULL"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/CaptureCompleteReason;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lcom/oneplus/camera/CaptureCompleteReason;->STORAGE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    .line 20
    new-instance v0, Lcom/oneplus/camera/CaptureCompleteReason;

    const-string/jumbo v1, "SAVING_QUEUE_FULL"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/camera/CaptureCompleteReason;-><init>(Ljava/lang/String;I)V

    .line 23
    sput-object v0, Lcom/oneplus/camera/CaptureCompleteReason;->SAVING_QUEUE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    .line 24
    new-instance v0, Lcom/oneplus/camera/CaptureCompleteReason;

    const-string/jumbo v1, "UNKNOWN_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/camera/CaptureCompleteReason;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    .line 28
    new-instance v0, Lcom/oneplus/camera/CaptureCompleteReason;

    const-string/jumbo v1, "INVALID_STATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/CaptureCompleteReason;-><init>(Ljava/lang/String;I)V

    .line 31
    sput-object v0, Lcom/oneplus/camera/CaptureCompleteReason;->INVALID_STATE:Lcom/oneplus/camera/CaptureCompleteReason;

    .line 32
    new-instance v0, Lcom/oneplus/camera/CaptureCompleteReason;

    const-string/jumbo v1, "MAX_FILE_SIZE_REACHED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/CaptureCompleteReason;-><init>(Ljava/lang/String;I)V

    .line 35
    sput-object v0, Lcom/oneplus/camera/CaptureCompleteReason;->MAX_FILE_SIZE_REACHED:Lcom/oneplus/camera/CaptureCompleteReason;

    .line 36
    new-instance v0, Lcom/oneplus/camera/CaptureCompleteReason;

    const-string/jumbo v1, "MAX_DURATION_REACHED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/CaptureCompleteReason;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v0, Lcom/oneplus/camera/CaptureCompleteReason;->MAX_DURATION_REACHED:Lcom/oneplus/camera/CaptureCompleteReason;

    .line 6
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/oneplus/camera/CaptureCompleteReason;

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->CANCELLED:Lcom/oneplus/camera/CaptureCompleteReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->STORAGE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->SAVING_QUEUE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->INVALID_STATE:Lcom/oneplus/camera/CaptureCompleteReason;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->MAX_FILE_SIZE_REACHED:Lcom/oneplus/camera/CaptureCompleteReason;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->MAX_DURATION_REACHED:Lcom/oneplus/camera/CaptureCompleteReason;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/camera/CaptureCompleteReason;->$VALUES:[Lcom/oneplus/camera/CaptureCompleteReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/CaptureCompleteReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CaptureCompleteReason;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/CaptureCompleteReason;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oneplus/camera/CaptureCompleteReason;->$VALUES:[Lcom/oneplus/camera/CaptureCompleteReason;

    return-object v0
.end method
