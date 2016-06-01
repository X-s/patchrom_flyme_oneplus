.class public final enum Lcom/oneplus/api/constants/RequestMethod;
.super Ljava/lang/Enum;
.source "RequestMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/api/constants/RequestMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/api/constants/RequestMethod;

.field public static final enum GET:Lcom/oneplus/api/constants/RequestMethod;

.field public static final enum POST:Lcom/oneplus/api/constants/RequestMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/oneplus/api/constants/RequestMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/api/constants/RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/api/constants/RequestMethod;->GET:Lcom/oneplus/api/constants/RequestMethod;

    new-instance v0, Lcom/oneplus/api/constants/RequestMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/api/constants/RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/api/constants/RequestMethod;->POST:Lcom/oneplus/api/constants/RequestMethod;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oneplus/api/constants/RequestMethod;

    sget-object v1, Lcom/oneplus/api/constants/RequestMethod;->GET:Lcom/oneplus/api/constants/RequestMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/api/constants/RequestMethod;->POST:Lcom/oneplus/api/constants/RequestMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/api/constants/RequestMethod;->$VALUES:[Lcom/oneplus/api/constants/RequestMethod;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/api/constants/RequestMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/oneplus/api/constants/RequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/api/constants/RequestMethod;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/api/constants/RequestMethod;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/oneplus/api/constants/RequestMethod;->$VALUES:[Lcom/oneplus/api/constants/RequestMethod;

    invoke-virtual {v0}, [Lcom/oneplus/api/constants/RequestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/api/constants/RequestMethod;

    return-object v0
.end method
