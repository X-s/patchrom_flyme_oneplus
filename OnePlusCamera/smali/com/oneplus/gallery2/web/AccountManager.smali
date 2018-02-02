.class public interface abstract Lcom/oneplus/gallery2/web/AccountManager;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final EVENT_ACCOUNT_CREATED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/web/AccountEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_ACCOUNT_DELETED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/web/AccountEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_ACCOUNT_STATUS_UPDATED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/web/AccountEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_ACCOUNTS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/web/Account;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 17
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Accounts"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/gallery2/web/AccountManager;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/web/AccountManager;->PROP_ACCOUNTS:Lcom/oneplus/base/PropertyKey;

    .line 23
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "AccountCreated"

    const-class v2, Lcom/oneplus/gallery2/web/AccountEventArgs;

    const-class v3, Lcom/oneplus/gallery2/web/AccountManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/web/AccountManager;->EVENT_ACCOUNT_CREATED:Lcom/oneplus/base/EventKey;

    .line 27
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "AccountDeleted"

    const-class v2, Lcom/oneplus/gallery2/web/AccountEventArgs;

    const-class v3, Lcom/oneplus/gallery2/web/AccountManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/web/AccountManager;->EVENT_ACCOUNT_DELETED:Lcom/oneplus/base/EventKey;

    .line 31
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "AccountStatusUpdated"

    const-class v2, Lcom/oneplus/gallery2/web/AccountEventArgs;

    const-class v3, Lcom/oneplus/gallery2/web/AccountManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/web/AccountManager;->EVENT_ACCOUNT_STATUS_UPDATED:Lcom/oneplus/base/EventKey;

    return-void
.end method


# virtual methods
.method public abstract authorize(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/gallery2/web/Account;)Z
.end method

.method public abstract createAccount(Lcom/oneplus/gallery2/Gallery;)Z
.end method

.method public abstract deleteAccount(Lcom/oneplus/gallery2/web/Account;)Z
.end method
