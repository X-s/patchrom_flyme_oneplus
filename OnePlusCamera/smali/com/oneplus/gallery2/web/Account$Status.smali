.class public final enum Lcom/oneplus/gallery2/web/Account$Status;
.super Ljava/lang/Enum;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/web/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/web/Account$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/oneplus/gallery2/web/Account$Status;

.field public static final enum EXPIRED:Lcom/oneplus/gallery2/web/Account$Status;

.field public static final enum ONLINE:Lcom/oneplus/gallery2/web/Account$Status;

.field public static final enum UNKNOWN:Lcom/oneplus/gallery2/web/Account$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/oneplus/gallery2/web/Account$Status;

    const-string/jumbo v1, "EXPIRED"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/web/Account$Status;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v0, Lcom/oneplus/gallery2/web/Account$Status;->EXPIRED:Lcom/oneplus/gallery2/web/Account$Status;

    .line 38
    new-instance v0, Lcom/oneplus/gallery2/web/Account$Status;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/web/Account$Status;-><init>(Ljava/lang/String;I)V

    .line 41
    sput-object v0, Lcom/oneplus/gallery2/web/Account$Status;->UNKNOWN:Lcom/oneplus/gallery2/web/Account$Status;

    .line 42
    new-instance v0, Lcom/oneplus/gallery2/web/Account$Status;

    const-string/jumbo v1, "ONLINE"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery2/web/Account$Status;-><init>(Ljava/lang/String;I)V

    .line 45
    sput-object v0, Lcom/oneplus/gallery2/web/Account$Status;->ONLINE:Lcom/oneplus/gallery2/web/Account$Status;

    const/4 v0, 0x3

    .line 31
    new-array v0, v0, [Lcom/oneplus/gallery2/web/Account$Status;

    sget-object v1, Lcom/oneplus/gallery2/web/Account$Status;->EXPIRED:Lcom/oneplus/gallery2/web/Account$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery2/web/Account$Status;->UNKNOWN:Lcom/oneplus/gallery2/web/Account$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery2/web/Account$Status;->ONLINE:Lcom/oneplus/gallery2/web/Account$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/gallery2/web/Account$Status;->ENUM$VALUES:[Lcom/oneplus/gallery2/web/Account$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/web/Account$Status;
    .locals 1

    .prologue
    const-class v0, Lcom/oneplus/gallery2/web/Account$Status;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/web/Account$Status;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/web/Account$Status;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/oneplus/gallery2/web/Account$Status;->ENUM$VALUES:[Lcom/oneplus/gallery2/web/Account$Status;

    array-length v1, v0

    new-array v2, v1, [Lcom/oneplus/gallery2/web/Account$Status;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
