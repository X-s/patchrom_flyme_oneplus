.class public interface abstract Lcom/oneplus/gallery2/web/Account;
.super Ljava/lang/Object;
.source "Account.java"

# interfaces
.implements Lcom/oneplus/base/BaseObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/web/Account$Status;
    }
.end annotation


# static fields
.field public static final PROP_DISPLAY_NAME:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_STATUS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery2/web/Account$Status;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_USER_ID:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 12
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "DisplayName"

    const-class v2, Ljava/lang/String;

    const-class v3, Lcom/oneplus/gallery2/web/Account;

    const-string/jumbo v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/web/Account;->PROP_DISPLAY_NAME:Lcom/oneplus/base/PropertyKey;

    .line 21
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Status"

    const-class v2, Lcom/oneplus/gallery2/web/Account$Status;

    const-class v3, Lcom/oneplus/gallery2/web/Account;

    sget-object v4, Lcom/oneplus/gallery2/web/Account$Status;->UNKNOWN:Lcom/oneplus/gallery2/web/Account$Status;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/web/Account;->PROP_STATUS:Lcom/oneplus/base/PropertyKey;

    .line 25
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "UserId"

    const-class v2, Ljava/lang/String;

    const-class v3, Lcom/oneplus/gallery2/web/Account;

    const-string/jumbo v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/web/Account;->PROP_USER_ID:Lcom/oneplus/base/PropertyKey;

    return-void
.end method


# virtual methods
.method public abstract authorize(Lcom/oneplus/gallery2/Gallery;)V
.end method

.method public abstract getAccountManager()Lcom/oneplus/gallery2/web/AccountManager;
.end method
