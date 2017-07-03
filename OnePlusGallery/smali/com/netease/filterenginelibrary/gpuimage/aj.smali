.class public final enum Lcom/netease/filterenginelibrary/gpuimage/aj;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/netease/filterenginelibrary/gpuimage/aj;

.field public static final enum b:Lcom/netease/filterenginelibrary/gpuimage/aj;

.field public static final enum c:Lcom/netease/filterenginelibrary/gpuimage/aj;

.field public static final enum d:Lcom/netease/filterenginelibrary/gpuimage/aj;

.field private static final synthetic e:[Lcom/netease/filterenginelibrary/gpuimage/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/aj;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/aj;->a:Lcom/netease/filterenginelibrary/gpuimage/aj;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/aj;

    const-string v1, "ROTATION_90"

    invoke-direct {v0, v1, v3}, Lcom/netease/filterenginelibrary/gpuimage/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/aj;->b:Lcom/netease/filterenginelibrary/gpuimage/aj;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/aj;

    const-string v1, "ROTATION_180"

    invoke-direct {v0, v1, v4}, Lcom/netease/filterenginelibrary/gpuimage/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/aj;->c:Lcom/netease/filterenginelibrary/gpuimage/aj;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/aj;

    const-string v1, "ROTATION_270"

    invoke-direct {v0, v1, v5}, Lcom/netease/filterenginelibrary/gpuimage/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/aj;->d:Lcom/netease/filterenginelibrary/gpuimage/aj;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netease/filterenginelibrary/gpuimage/aj;

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/aj;->a:Lcom/netease/filterenginelibrary/gpuimage/aj;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/aj;->b:Lcom/netease/filterenginelibrary/gpuimage/aj;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/aj;->c:Lcom/netease/filterenginelibrary/gpuimage/aj;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/aj;->d:Lcom/netease/filterenginelibrary/gpuimage/aj;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/aj;->e:[Lcom/netease/filterenginelibrary/gpuimage/aj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/netease/filterenginelibrary/gpuimage/aj;
    .locals 1

    const-class v0, Lcom/netease/filterenginelibrary/gpuimage/aj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/aj;

    return-object v0
.end method

.method public static a()[Lcom/netease/filterenginelibrary/gpuimage/aj;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/aj;->e:[Lcom/netease/filterenginelibrary/gpuimage/aj;

    array-length v1, v0

    new-array v2, v1, [Lcom/netease/filterenginelibrary/gpuimage/aj;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
