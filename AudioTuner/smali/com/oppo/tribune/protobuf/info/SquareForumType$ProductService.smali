.class public final enum Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;
.super Ljava/lang/Enum;
.source "SquareForumType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/info/SquareForumType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProductService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;

.field public static final enum ONLINE_CONSULTATION:Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;

.field public static final enum PRODUCT_CENTER:Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;

.field public static final enum SERVER_NET:Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 42
    new-instance v0, Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;

    const-string v1, "PRODUCT_CENTER"

    invoke-direct {v0, v1, v4, v2}, Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;->PRODUCT_CENTER:Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;

    new-instance v0, Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;

    const-string v1, "ONLINE_CONSULTATION"

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;->ONLINE_CONSULTATION:Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;

    new-instance v0, Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;

    const-string v1, "SERVER_NET"

    invoke-direct {v0, v1, v3, v5}, Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;->SERVER_NET:Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;

    .line 41
    new-array v0, v5, [Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;

    sget-object v1, Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;->PRODUCT_CENTER:Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;->ONLINE_CONSULTATION:Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;->SERVER_NET:Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;->$VALUES:[Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;->index:I

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;

    return-object v0
.end method

.method public static values()[Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;->$VALUES:[Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;

    invoke-virtual {v0}, [Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/SquareForumType$ProductService;->index:I

    return v0
.end method
