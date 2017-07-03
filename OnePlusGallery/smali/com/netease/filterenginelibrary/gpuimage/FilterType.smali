.class public final enum Lcom/netease/filterenginelibrary/gpuimage/FilterType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum CLARITY:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

.field public static final enum CONTRASTM:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

.field public static final enum CONTRASTP:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

.field public static final enum DARKNESS:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

.field public static final enum DARKNESSTINT:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

.field private static final synthetic ENUM$VALUES:[Lcom/netease/filterenginelibrary/gpuimage/FilterType;

.field public static final enum EXPOSUREM:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

.field public static final enum EXPOSUREP:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

.field public static final enum FADE:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

.field public static final enum GRAIN:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

.field public static final enum HIGHLIGHT:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

.field public static final enum HIGHLIGHTTINT:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

.field public static final enum NORMAL:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

.field public static final enum PRESET:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

.field public static final enum SATURATION:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

.field public static final enum SHARPNESS:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

.field public static final enum TEMPERATUREM:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

.field public static final enum TEMPERATUREP:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

.field public static final enum VIGNETTE:Lcom/netease/filterenginelibrary/gpuimage/FilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->NORMAL:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    const-string v1, "PRESET"

    invoke-direct {v0, v1, v4}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->PRESET:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    const-string v1, "TEMPERATUREM"

    invoke-direct {v0, v1, v5}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->TEMPERATUREM:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    const-string v1, "TEMPERATUREP"

    invoke-direct {v0, v1, v6}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->TEMPERATUREP:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    const-string v1, "SATURATION"

    invoke-direct {v0, v1, v7}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->SATURATION:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    const-string v1, "EXPOSUREM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->EXPOSUREM:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    const-string v1, "EXPOSUREP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->EXPOSUREP:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    const-string v1, "CONTRASTM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->CONTRASTM:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    const-string v1, "CONTRASTP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->CONTRASTP:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    const-string v1, "CLARITY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->CLARITY:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    const-string v1, "SHARPNESS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->SHARPNESS:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    const-string v1, "GRAIN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->GRAIN:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    const-string v1, "VIGNETTE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->VIGNETTE:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    const-string v1, "HIGHLIGHT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->HIGHLIGHT:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    const-string v1, "HIGHLIGHTTINT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->HIGHLIGHTTINT:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    const-string v1, "DARKNESS"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->DARKNESS:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    const-string v1, "DARKNESSTINT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->DARKNESSTINT:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    const-string v1, "FADE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->FADE:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->NORMAL:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->PRESET:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->TEMPERATUREM:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->TEMPERATUREP:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->SATURATION:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->EXPOSUREM:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->EXPOSUREP:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->CONTRASTM:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->CONTRASTP:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->CLARITY:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->SHARPNESS:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->GRAIN:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->VIGNETTE:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->HIGHLIGHT:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->HIGHLIGHTTINT:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->DARKNESS:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->DARKNESSTINT:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->FADE:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->ENUM$VALUES:[Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/filterenginelibrary/gpuimage/FilterType;
    .locals 1

    const-class v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    return-object v0
.end method

.method public static values()[Lcom/netease/filterenginelibrary/gpuimage/FilterType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->ENUM$VALUES:[Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    array-length v1, v0

    new-array v2, v1, [Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
