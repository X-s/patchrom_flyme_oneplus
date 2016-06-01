.class public final enum Lcom/oneplus/api/constants/ResponseDataType;
.super Ljava/lang/Enum;
.source "ResponseDataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/api/constants/ResponseDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/api/constants/ResponseDataType;

.field public static final enum JSON:Lcom/oneplus/api/constants/ResponseDataType;

.field public static final enum XML:Lcom/oneplus/api/constants/ResponseDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/oneplus/api/constants/ResponseDataType;

    const-string v1, "JSON"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/api/constants/ResponseDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/api/constants/ResponseDataType;->JSON:Lcom/oneplus/api/constants/ResponseDataType;

    new-instance v0, Lcom/oneplus/api/constants/ResponseDataType;

    const-string v1, "XML"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/api/constants/ResponseDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/api/constants/ResponseDataType;->XML:Lcom/oneplus/api/constants/ResponseDataType;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oneplus/api/constants/ResponseDataType;

    sget-object v1, Lcom/oneplus/api/constants/ResponseDataType;->JSON:Lcom/oneplus/api/constants/ResponseDataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/api/constants/ResponseDataType;->XML:Lcom/oneplus/api/constants/ResponseDataType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/api/constants/ResponseDataType;->$VALUES:[Lcom/oneplus/api/constants/ResponseDataType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/api/constants/ResponseDataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/oneplus/api/constants/ResponseDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/api/constants/ResponseDataType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/api/constants/ResponseDataType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/oneplus/api/constants/ResponseDataType;->$VALUES:[Lcom/oneplus/api/constants/ResponseDataType;

    invoke-virtual {v0}, [Lcom/oneplus/api/constants/ResponseDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/api/constants/ResponseDataType;

    return-object v0
.end method
