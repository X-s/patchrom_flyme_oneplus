.class public final enum Lcom/oneplus/gallery2/media/PrepareSharingResult;
.super Ljava/lang/Enum;
.source "PrepareSharingResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/media/PrepareSharingResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELED:Lcom/oneplus/gallery2/media/PrepareSharingResult;

.field private static final synthetic ENUM$VALUES:[Lcom/oneplus/gallery2/media/PrepareSharingResult;

.field public static final enum NETWORK_ERROR:Lcom/oneplus/gallery2/media/PrepareSharingResult;

.field public static final enum SUCCESS:Lcom/oneplus/gallery2/media/PrepareSharingResult;

.field public static final enum UNKNOWN_ERROR:Lcom/oneplus/gallery2/media/PrepareSharingResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/oneplus/gallery2/media/PrepareSharingResult;

    const-string/jumbo v1, "CANCELED"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/media/PrepareSharingResult;-><init>(Ljava/lang/String;I)V

    .line 8
    sput-object v0, Lcom/oneplus/gallery2/media/PrepareSharingResult;->CANCELED:Lcom/oneplus/gallery2/media/PrepareSharingResult;

    .line 11
    new-instance v0, Lcom/oneplus/gallery2/media/PrepareSharingResult;

    const-string/jumbo v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/media/PrepareSharingResult;-><init>(Ljava/lang/String;I)V

    .line 14
    sput-object v0, Lcom/oneplus/gallery2/media/PrepareSharingResult;->NETWORK_ERROR:Lcom/oneplus/gallery2/media/PrepareSharingResult;

    .line 17
    new-instance v0, Lcom/oneplus/gallery2/media/PrepareSharingResult;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery2/media/PrepareSharingResult;-><init>(Ljava/lang/String;I)V

    .line 20
    sput-object v0, Lcom/oneplus/gallery2/media/PrepareSharingResult;->SUCCESS:Lcom/oneplus/gallery2/media/PrepareSharingResult;

    .line 23
    new-instance v0, Lcom/oneplus/gallery2/media/PrepareSharingResult;

    const-string/jumbo v1, "UNKNOWN_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery2/media/PrepareSharingResult;-><init>(Ljava/lang/String;I)V

    .line 26
    sput-object v0, Lcom/oneplus/gallery2/media/PrepareSharingResult;->UNKNOWN_ERROR:Lcom/oneplus/gallery2/media/PrepareSharingResult;

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [Lcom/oneplus/gallery2/media/PrepareSharingResult;

    sget-object v1, Lcom/oneplus/gallery2/media/PrepareSharingResult;->CANCELED:Lcom/oneplus/gallery2/media/PrepareSharingResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery2/media/PrepareSharingResult;->NETWORK_ERROR:Lcom/oneplus/gallery2/media/PrepareSharingResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery2/media/PrepareSharingResult;->SUCCESS:Lcom/oneplus/gallery2/media/PrepareSharingResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery2/media/PrepareSharingResult;->UNKNOWN_ERROR:Lcom/oneplus/gallery2/media/PrepareSharingResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/gallery2/media/PrepareSharingResult;->ENUM$VALUES:[Lcom/oneplus/gallery2/media/PrepareSharingResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/media/PrepareSharingResult;
    .locals 1

    .prologue
    const-class v0, Lcom/oneplus/gallery2/media/PrepareSharingResult;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/PrepareSharingResult;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/media/PrepareSharingResult;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/oneplus/gallery2/media/PrepareSharingResult;->ENUM$VALUES:[Lcom/oneplus/gallery2/media/PrepareSharingResult;

    array-length v1, v0

    new-array v2, v1, [Lcom/oneplus/gallery2/media/PrepareSharingResult;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
