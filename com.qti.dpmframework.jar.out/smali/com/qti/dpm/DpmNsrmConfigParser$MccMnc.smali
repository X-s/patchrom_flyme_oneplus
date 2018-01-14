.class Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;
.super Ljava/lang/Object;
.source "DpmNsrmConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmNsrmConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MccMnc"
.end annotation


# instance fields
.field private portNtoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/qti/dpm/DpmNsrmConfigParser;

.field private valueStr:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->portNtoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->valueStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->portNtoMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic -set1(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->valueStr:Ljava/lang/String;

    return-object p1
.end method

.method constructor <init>(Lcom/qti/dpm/DpmNsrmConfigParser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qti/dpm/DpmNsrmConfigParser;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->this$0:Lcom/qti/dpm/DpmNsrmConfigParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
