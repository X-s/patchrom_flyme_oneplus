.class public Lcom/netease/filterenginelibrary/gpuimage/L;
.super Lcom/netease/filterenginelibrary/gpuimage/W;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/FilterNativeLibrary;->stringHardLightBlendFragmentShader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/ai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/L;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/L;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/W;-><init>(Ljava/lang/String;)V

    return-void
.end method
