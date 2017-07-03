.class public final enum Lcom/netease/filterenginelibrary/utils/ScalingLogic;
.super Ljava/lang/Enum;


# static fields
.field public static final enum CROP:Lcom/netease/filterenginelibrary/utils/ScalingLogic;

.field public static final enum FIT:Lcom/netease/filterenginelibrary/utils/ScalingLogic;

.field private static final synthetic a:[Lcom/netease/filterenginelibrary/utils/ScalingLogic;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netease/filterenginelibrary/utils/ScalingLogic;

    const-string v1, "FIT"

    invoke-direct {v0, v1, v2}, Lcom/netease/filterenginelibrary/utils/ScalingLogic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/utils/ScalingLogic;->FIT:Lcom/netease/filterenginelibrary/utils/ScalingLogic;

    new-instance v0, Lcom/netease/filterenginelibrary/utils/ScalingLogic;

    const-string v1, "CROP"

    invoke-direct {v0, v1, v3}, Lcom/netease/filterenginelibrary/utils/ScalingLogic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/utils/ScalingLogic;->CROP:Lcom/netease/filterenginelibrary/utils/ScalingLogic;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netease/filterenginelibrary/utils/ScalingLogic;

    sget-object v1, Lcom/netease/filterenginelibrary/utils/ScalingLogic;->FIT:Lcom/netease/filterenginelibrary/utils/ScalingLogic;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/filterenginelibrary/utils/ScalingLogic;->CROP:Lcom/netease/filterenginelibrary/utils/ScalingLogic;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netease/filterenginelibrary/utils/ScalingLogic;->a:[Lcom/netease/filterenginelibrary/utils/ScalingLogic;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/filterenginelibrary/utils/ScalingLogic;
    .locals 1

    const-class v0, Lcom/netease/filterenginelibrary/utils/ScalingLogic;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/utils/ScalingLogic;

    return-object v0
.end method

.method public static values()[Lcom/netease/filterenginelibrary/utils/ScalingLogic;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/netease/filterenginelibrary/utils/ScalingLogic;->a:[Lcom/netease/filterenginelibrary/utils/ScalingLogic;

    array-length v1, v0

    new-array v2, v1, [Lcom/netease/filterenginelibrary/utils/ScalingLogic;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
