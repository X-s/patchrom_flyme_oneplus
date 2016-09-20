.class final enum Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;
.super Ljava/lang/Enum;
.source "UILocationManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/location/UILocationManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LocationProvier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

.field public static final enum AMAP:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

.field public static final enum GPS:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

.field public static final enum NETWORK:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

.field public static final enum PASSIVE:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    const-string v1, "AMAP"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->AMAP:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    .line 62
    new-instance v0, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    const-string v1, "GPS"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->GPS:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    .line 63
    new-instance v0, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->NETWORK:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    .line 64
    new-instance v0, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    const-string v1, "PASSIVE"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->PASSIVE:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    sget-object v1, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->AMAP:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->GPS:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->NETWORK:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->PASSIVE:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->$VALUES:[Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->$VALUES:[Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    invoke-virtual {v0}, [Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    return-object v0
.end method
