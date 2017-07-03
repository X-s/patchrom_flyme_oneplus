.class public final enum Lcom/oneplus/base/BaseActivity$ThemeMode;
.super Ljava/lang/Enum;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/base/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThemeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/base/BaseActivity$ThemeMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANDROID:Lcom/oneplus/base/BaseActivity$ThemeMode;

.field public static final enum DARK:Lcom/oneplus/base/BaseActivity$ThemeMode;

.field private static final synthetic ENUM$VALUES:[Lcom/oneplus/base/BaseActivity$ThemeMode;

.field public static final enum LIGHT:Lcom/oneplus/base/BaseActivity$ThemeMode;

.field public static final enum UNKNOWN:Lcom/oneplus/base/BaseActivity$ThemeMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    new-instance v0, Lcom/oneplus/base/BaseActivity$ThemeMode;

    const-string v1, "ANDROID"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/base/BaseActivity$ThemeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/BaseActivity$ThemeMode;->ANDROID:Lcom/oneplus/base/BaseActivity$ThemeMode;

    .line 152
    new-instance v0, Lcom/oneplus/base/BaseActivity$ThemeMode;

    const-string v1, "DARK"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/base/BaseActivity$ThemeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/BaseActivity$ThemeMode;->DARK:Lcom/oneplus/base/BaseActivity$ThemeMode;

    .line 153
    new-instance v0, Lcom/oneplus/base/BaseActivity$ThemeMode;

    const-string v1, "LIGHT"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/base/BaseActivity$ThemeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/BaseActivity$ThemeMode;->LIGHT:Lcom/oneplus/base/BaseActivity$ThemeMode;

    .line 154
    new-instance v0, Lcom/oneplus/base/BaseActivity$ThemeMode;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/base/BaseActivity$ThemeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/BaseActivity$ThemeMode;->UNKNOWN:Lcom/oneplus/base/BaseActivity$ThemeMode;

    .line 149
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/base/BaseActivity$ThemeMode;

    sget-object v1, Lcom/oneplus/base/BaseActivity$ThemeMode;->ANDROID:Lcom/oneplus/base/BaseActivity$ThemeMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/base/BaseActivity$ThemeMode;->DARK:Lcom/oneplus/base/BaseActivity$ThemeMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/base/BaseActivity$ThemeMode;->LIGHT:Lcom/oneplus/base/BaseActivity$ThemeMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/base/BaseActivity$ThemeMode;->UNKNOWN:Lcom/oneplus/base/BaseActivity$ThemeMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/base/BaseActivity$ThemeMode;->ENUM$VALUES:[Lcom/oneplus/base/BaseActivity$ThemeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/base/BaseActivity$ThemeMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$ThemeMode;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/base/BaseActivity$ThemeMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/oneplus/base/BaseActivity$ThemeMode;->ENUM$VALUES:[Lcom/oneplus/base/BaseActivity$ThemeMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
