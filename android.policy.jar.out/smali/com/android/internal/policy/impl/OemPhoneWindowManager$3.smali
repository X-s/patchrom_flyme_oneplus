.class Lcom/android/internal/policy/impl/OemPhoneWindowManager$3;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/OemPhoneWindowManager;->onIdentified(IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 723
    sget-boolean v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeFind:Z

    if-nez v0, :cond_0

    .line 724
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLockHomeUp:I

    .line 726
    :cond_0
    return-void
.end method
