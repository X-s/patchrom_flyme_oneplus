.class public final enum Lcom/oneplus/gallery2/media/MediaSet$Type;
.super Ljava/lang/Enum;
.source "MediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/media/MediaSet$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery2/media/MediaSet$Type;

.field public static final enum APPLICATION:Lcom/oneplus/gallery2/media/MediaSet$Type;

.field public static final enum OTHER:Lcom/oneplus/gallery2/media/MediaSet$Type;

.field public static final enum SYSTEM:Lcom/oneplus/gallery2/media/MediaSet$Type;

.field public static final enum USER:Lcom/oneplus/gallery2/media/MediaSet$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-instance v0, Lcom/oneplus/gallery2/media/MediaSet$Type;

    const-string v1, "SYSTEM"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaSet$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery2/media/MediaSet$Type;

    .line 101
    new-instance v0, Lcom/oneplus/gallery2/media/MediaSet$Type;

    const-string v1, "USER"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/media/MediaSet$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSet$Type;->USER:Lcom/oneplus/gallery2/media/MediaSet$Type;

    .line 105
    new-instance v0, Lcom/oneplus/gallery2/media/MediaSet$Type;

    const-string v1, "APPLICATION"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery2/media/MediaSet$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSet$Type;->APPLICATION:Lcom/oneplus/gallery2/media/MediaSet$Type;

    .line 109
    new-instance v0, Lcom/oneplus/gallery2/media/MediaSet$Type;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery2/media/MediaSet$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSet$Type;->OTHER:Lcom/oneplus/gallery2/media/MediaSet$Type;

    .line 92
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/gallery2/media/MediaSet$Type;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery2/media/MediaSet$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet$Type;->USER:Lcom/oneplus/gallery2/media/MediaSet$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet$Type;->APPLICATION:Lcom/oneplus/gallery2/media/MediaSet$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet$Type;->OTHER:Lcom/oneplus/gallery2/media/MediaSet$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSet$Type;->$VALUES:[Lcom/oneplus/gallery2/media/MediaSet$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/media/MediaSet$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    const-class v0, Lcom/oneplus/gallery2/media/MediaSet$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet$Type;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/media/MediaSet$Type;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet$Type;->$VALUES:[Lcom/oneplus/gallery2/media/MediaSet$Type;

    invoke-virtual {v0}, [Lcom/oneplus/gallery2/media/MediaSet$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/media/MediaSet$Type;

    return-object v0
.end method
