.class public final enum Lcom/netease/filterenginelibrary/gpuimage/u;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/netease/filterenginelibrary/gpuimage/u;

.field public static final enum b:Lcom/netease/filterenginelibrary/gpuimage/u;

.field private static final synthetic c:[Lcom/netease/filterenginelibrary/gpuimage/u;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/u;

    const-string v1, "CENTER_INSIDE"

    invoke-direct {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/u;->a:Lcom/netease/filterenginelibrary/gpuimage/u;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/u;

    const-string v1, "CENTER_CROP"

    invoke-direct {v0, v1, v3}, Lcom/netease/filterenginelibrary/gpuimage/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/u;->b:Lcom/netease/filterenginelibrary/gpuimage/u;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netease/filterenginelibrary/gpuimage/u;

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/u;->a:Lcom/netease/filterenginelibrary/gpuimage/u;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/u;->b:Lcom/netease/filterenginelibrary/gpuimage/u;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/u;->c:[Lcom/netease/filterenginelibrary/gpuimage/u;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/netease/filterenginelibrary/gpuimage/u;
    .locals 1

    const-class v0, Lcom/netease/filterenginelibrary/gpuimage/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/u;

    return-object v0
.end method

.method public static a()[Lcom/netease/filterenginelibrary/gpuimage/u;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/u;->c:[Lcom/netease/filterenginelibrary/gpuimage/u;

    array-length v1, v0

    new-array v2, v1, [Lcom/netease/filterenginelibrary/gpuimage/u;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
