.class Lcom/android/settings_ex/CryptKeeper$1;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeper$1;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper$1;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/settings_ex/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/CryptKeeper;->access$000(Lcom/android/settings_ex/CryptKeeper;Ljava/lang/Integer;)V

    .line 146
    return-void
.end method
