.class public Lcom/customRobTop/BaseRobTopActivity;
.super Lcom/customRobTop/DefaultRobTopActivity;
.source "BaseRobTopActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/customRobTop/BaseRobTopActivity$receiverScreen;
    }
.end annotation


# static fields
.field public static GAM_:Lcom/customRobTop/GameAdManager; = null

.field public static final SCREEN_ORIENTATION_LANDSCAPE:I = 0x0

.field public static final SCREEN_ORIENTATION_SENSOR_LANDSCAPE:I = 0x6

.field public static final SCREEN_ORIENTATION_USER_LANDSCAPE:I = 0xb

.field public static final TAG:Ljava/lang/String; = "RobTopBase"

.field public static blockBackButton_:Z

.field public static focusState_:Z

.field public static isLoaded_:Z

.field public static isPaused_:Z

.field public static keyboardActive_:Z

.field public static me:Lcom/customRobTop/BaseRobTopActivity;

.field public static receiver_:Landroid/content/BroadcastReceiver;

.field public static shouldResumeSound_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 44
    sput-object v2, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    .line 45
    sput-boolean v0, Lcom/customRobTop/BaseRobTopActivity;->isLoaded_:Z

    .line 47
    sput-boolean v0, Lcom/customRobTop/BaseRobTopActivity;->keyboardActive_:Z

    .line 48
    sput-boolean v0, Lcom/customRobTop/BaseRobTopActivity;->blockBackButton_:Z

    .line 49
    sput-boolean v1, Lcom/customRobTop/BaseRobTopActivity;->focusState_:Z

    .line 51
    sput-boolean v1, Lcom/customRobTop/BaseRobTopActivity;->shouldResumeSound_:Z

    .line 52
    sput-boolean v0, Lcom/customRobTop/BaseRobTopActivity;->isPaused_:Z

    .line 57
    sput-object v2, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/customRobTop/DefaultRobTopActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/customRobTop/BaseRobTopActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/customRobTop/BaseRobTopActivity;->setSystemUiVisilityMode()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static admobKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    const-string v0, ""

    return-object v0
.end method

.method public static cacheInterstitial()V
    .locals 1

    .prologue
    .line 470
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0}, Lcom/customRobTop/GameAdManager;->cacheInterstitial()V

    .line 471
    :cond_0
    return-void
.end method

.method public static cacheRewardedVideo()V
    .locals 1

    .prologue
    .line 486
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0}, Lcom/customRobTop/GameAdManager;->cacheRewardedVideo()V

    .line 487
    :cond_0
    return-void
.end method

.method public static cbAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    const-string v0, ""

    return-object v0
.end method

.method public static cbAppSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    const-string v0, ""

    return-object v0
.end method

.method public static disableBanner()V
    .locals 1

    .prologue
    .line 446
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0}, Lcom/customRobTop/GameAdManager;->disableBanner()V

    .line 447
    :cond_0
    return-void
.end method

.method public static doesFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 523
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 524
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static downloadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "imageURL"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 528
    return-void
.end method

.method public static enableBanner()V
    .locals 1

    .prologue
    .line 441
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0}, Lcom/customRobTop/GameAdManager;->enableBanner()V

    .line 442
    :cond_0
    return-void
.end method

.method public static enableBannerNoRefresh()V
    .locals 1

    .prologue
    .line 436
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0}, Lcom/customRobTop/GameAdManager;->enableBannerNoRefresh()V

    .line 437
    :cond_0
    return-void
.end method

.method public static gameServicesIsSignedIn()Z
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method public static gameServicesSignIn()V
    .locals 0

    .prologue
    .line 595
    return-void
.end method

.method public static gameServicesSignOut()V
    .locals 0

    .prologue
    .line 597
    return-void
.end method

.method public static getUserID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 301
    sget-object v1, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    invoke-virtual {v1}, Lcom/customRobTop/BaseRobTopActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "androidId":Ljava/lang/String;
    const-string v1, "9774d56d682e549c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static hasCachedInterstitial()Z
    .locals 1

    .prologue
    .line 475
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0}, Lcom/customRobTop/GameAdManager;->hasCachedInterstitial()Z

    move-result v0

    .line 476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasCachedRewardedVideo()Z
    .locals 1

    .prologue
    .line 491
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0}, Lcom/customRobTop/GameAdManager;->hasCachedRewardedVideo()Z

    move-result v0

    .line 492
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkAvailable()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 314
    const/4 v2, 0x0

    .line 315
    .local v2, "haveConnectedWifi":Z
    const/4 v1, 0x0

    .line 317
    .local v1, "haveConnectedMobile":Z
    sget-object v6, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    .line 318
    const-string v7, "connectivity"

    .line 317
    invoke-virtual {v6, v7}, Lcom/customRobTop/BaseRobTopActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 319
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 320
    .local v3, "netInfo":[Landroid/net/NetworkInfo;
    array-length v7, v3

    move v6, v5

    :goto_0
    if-lt v6, v7, :cond_0

    .line 328
    if-nez v2, :cond_3

    if-nez v1, :cond_3

    :goto_1
    return v5

    .line 320
    :cond_0
    aget-object v4, v3, v6

    .line 321
    .local v4, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WIFI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 322
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 323
    const/4 v2, 0x1

    .line 324
    :cond_1
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MOBILE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 325
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 326
    const/4 v1, 0x1

    .line 320
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 328
    .end local v4    # "ni":Landroid/net/NetworkInfo;
    :cond_3
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public static loadingFinished()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    sput-boolean v0, Lcom/customRobTop/BaseRobTopActivity;->isLoaded_:Z

    .line 226
    return-void
.end method

.method public static logEvent(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 145
    return-void
.end method

.method public static onNativePause()V
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0}, Lcom/customRobTop/GameAdManager;->pauseBanner()V

    .line 151
    :cond_0
    return-void
.end method

.method public static onNativeResume()V
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0}, Lcom/customRobTop/GameAdManager;->resumeBanner()V

    .line 157
    :cond_0
    return-void
.end method

.method public static onToggleKeyboard()V
    .locals 2

    .prologue
    .line 256
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    new-instance v1, Lcom/customRobTop/BaseRobTopActivity$2;

    invoke-direct {v1}, Lcom/customRobTop/BaseRobTopActivity$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/customRobTop/BaseRobTopActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 264
    return-void
.end method

.method public static openAppPage()V
    .locals 2

    .prologue
    .line 334
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    new-instance v1, Lcom/customRobTop/BaseRobTopActivity$3;

    invoke-direct {v1}, Lcom/customRobTop/BaseRobTopActivity$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/customRobTop/BaseRobTopActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 342
    return-void
.end method

.method public static openURL(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 358
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    new-instance v1, Lcom/customRobTop/BaseRobTopActivity$5;

    invoke-direct {v1, p0}, Lcom/customRobTop/BaseRobTopActivity$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/customRobTop/BaseRobTopActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 366
    return-void
.end method

.method public static pauseAds()V
    .locals 1

    .prologue
    .line 451
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0}, Lcom/customRobTop/GameAdManager;->pauseBanner()V

    .line 452
    :cond_0
    return-void
.end method

.method public static queueRefreshBanner()V
    .locals 1

    .prologue
    .line 431
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0}, Lcom/customRobTop/GameAdManager;->queueRefreshBanner()V

    .line 432
    :cond_0
    return-void
.end method

.method public static resumeAds()V
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0}, Lcom/customRobTop/GameAdManager;->resumeBanner()V

    .line 457
    :cond_0
    return-void
.end method

.method public static sendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "subject"    # Ljava/lang/String;
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;

    .prologue
    .line 371
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    new-instance v1, Lcom/customRobTop/BaseRobTopActivity$6;

    invoke-direct {v1, p2, p0, p1}, Lcom/customRobTop/BaseRobTopActivity$6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/customRobTop/BaseRobTopActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 387
    return-void
.end method

.method public static setBlockBackButton(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 252
    sput-boolean p0, Lcom/customRobTop/BaseRobTopActivity;->blockBackButton_:Z

    .line 253
    return-void
.end method

.method public static setKeyboardState(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 248
    sput-boolean p0, Lcom/customRobTop/BaseRobTopActivity;->keyboardActive_:Z

    .line 249
    return-void
.end method

.method private setSystemUiVisilityMode()Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/customRobTop/BaseRobTopActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1706

    .line 128
    .local v1, "options":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 129
    return-object v0
.end method

.method public static setupEveryplay()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method private setupMainWindowDisplayMode()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/customRobTop/BaseRobTopActivity;->setSystemUiVisilityMode()Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "decorView":Landroid/view/View;
    new-instance v1, Lcom/customRobTop/BaseRobTopActivity$1;

    invoke-direct {v1, p0}, Lcom/customRobTop/BaseRobTopActivity$1;-><init>(Lcom/customRobTop/BaseRobTopActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 114
    return-void
.end method

.method public static shouldResumeSound()Z
    .locals 1

    .prologue
    .line 244
    sget-boolean v0, Lcom/customRobTop/BaseRobTopActivity;->shouldResumeSound_:Z

    return v0
.end method

.method public static showAchievements()V
    .locals 0

    .prologue
    .line 601
    return-void
.end method

.method public static showInterstitial()V
    .locals 1

    .prologue
    .line 465
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0}, Lcom/customRobTop/GameAdManager;->showInterstitial()V

    .line 466
    :cond_0
    return-void
.end method

.method public static showLeaderboards()V
    .locals 0

    .prologue
    .line 600
    return-void
.end method

.method public static showRewardedVideo()V
    .locals 1

    .prologue
    .line 481
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0}, Lcom/customRobTop/GameAdManager;->showRewardedVideo()V

    .line 482
    :cond_0
    return-void
.end method

.method public static tryShowRateDialog(Ljava/lang/String;)V
    .locals 2
    .param p0, "appName"    # Ljava/lang/String;

    .prologue
    .line 346
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    new-instance v1, Lcom/customRobTop/BaseRobTopActivity$4;

    invoke-direct {v1, p0}, Lcom/customRobTop/BaseRobTopActivity$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/customRobTop/BaseRobTopActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 353
    return-void
.end method

.method public static unlockAchievement(Ljava/lang/String;)V
    .locals 0
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 599
    return-void
.end method

.method public static updateTopScoreLeaderboard(I)V
    .locals 0
    .param p0, "score"    # I

    .prologue
    .line 598
    return-void
.end method


# virtual methods
.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAklRPrtot3mua6MYUJXkbGD65TmPoUgHjLKuh0SZ67brpqDwftbmzkzc/cE7hiLeMSG/lfYYdX2/jhkhv2OULo67NHgzsskpIOOIP3zB11d+4aH8XkDPB1yRjI+rwk1v/MeK/uilnPUbSF8XnmEvTNxq47r5xgeOrJKjdO3TG6S7IneHQo1vZNwv/HqHJ3RhgzmJW79xNf0GWbPmMjusUhdbOtZdt1DbcMJIaORzBgyU9MnSwy37ri7cOhNL+OLdzUp+keuk7Exi6XAUR9CMeQ5JXdrCk37FAog6LA7IpIEm+ZIFRqhhRVaQ6+KTcTqyNpvYIYh5bH772d3Ro3uVG+QIDAQAB"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0}, Lcom/customRobTop/GameAdManager;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-super {p0}, Lcom/customRobTop/DefaultRobTopActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/customRobTop/BaseRobTopActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 71
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "storagePath":Ljava/lang/String;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/customRobTop/JniToCpp;->setupHSSAssets(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1}, Lcom/customRobTop/DefaultRobTopActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    sget-object v3, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/customRobTop/AppRater;->app_launched(Landroid/content/Context;)V

    .line 85
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_2

    .line 86
    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Lcom/customRobTop/BaseRobTopActivity;->setRequestedOrientation(I)V

    .line 95
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 96
    .local v1, "currentapiVersion":I
    const/16 v3, 0x13

    if-lt v1, v3, :cond_1

    invoke-direct {p0}, Lcom/customRobTop/BaseRobTopActivity;->setupMainWindowDisplayMode()V

    .line 98
    :cond_1
    sput-object p0, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    .line 101
    return-void

    .line 88
    .end local v1    # "currentapiVersion":I
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_3

    .line 89
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/customRobTop/BaseRobTopActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 92
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/customRobTop/BaseRobTopActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lcom/customRobTop/DefaultRobTopActivity;->onDestroy()V

    .line 205
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0}, Lcom/customRobTop/GameAdManager;->onDestroy()V

    .line 208
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/customRobTop/DefaultRobTopActivity;->onPause()V

    .line 179
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0}, Lcom/customRobTop/GameAdManager;->onPause()V

    .line 180
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/customRobTop/BaseRobTopActivity;->isPaused_:Z

    .line 181
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/customRobTop/DefaultRobTopActivity;->onResume()V

    .line 169
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0}, Lcom/customRobTop/GameAdManager;->onResume()V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/customRobTop/BaseRobTopActivity;->updateVisibilityMode()V

    .line 173
    const/4 v0, 0x0

    sput-boolean v0, Lcom/customRobTop/BaseRobTopActivity;->isPaused_:Z

    .line 174
    return-void
.end method

.method public onSignInFailed()V
    .locals 0

    .prologue
    .line 593
    return-void
.end method

.method public onSignInSucceeded()V
    .locals 0

    .prologue
    .line 594
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Lcom/customRobTop/DefaultRobTopActivity;->onStart()V

    .line 189
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0}, Lcom/customRobTop/GameAdManager;->createBanner()V

    .line 191
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0}, Lcom/customRobTop/GameAdManager;->onStart()V

    .line 194
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Lcom/customRobTop/DefaultRobTopActivity;->onStop()V

    .line 199
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->GAM_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0}, Lcom/customRobTop/GameAdManager;->onStop()V

    .line 200
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/customRobTop/DefaultRobTopActivity;->onWindowFocusChanged(Z)V

    .line 137
    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/customRobTop/BaseRobTopActivity;->updateVisibilityMode()V

    .line 141
    :cond_0
    return-void
.end method

.method registerReceiver()V
    .locals 3

    .prologue
    .line 267
    sget-object v1, Lcom/customRobTop/BaseRobTopActivity;->receiver_:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 268
    sget-object v1, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    sget-object v2, Lcom/customRobTop/BaseRobTopActivity;->receiver_:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/customRobTop/BaseRobTopActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 269
    const/4 v1, 0x0

    sput-object v1, Lcom/customRobTop/BaseRobTopActivity;->receiver_:Landroid/content/BroadcastReceiver;

    .line 273
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    new-instance v1, Lcom/customRobTop/BaseRobTopActivity$receiverScreen;

    invoke-direct {v1, p0}, Lcom/customRobTop/BaseRobTopActivity$receiverScreen;-><init>(Lcom/customRobTop/BaseRobTopActivity;)V

    sput-object v1, Lcom/customRobTop/BaseRobTopActivity;->receiver_:Landroid/content/BroadcastReceiver;

    .line 280
    sget-object v1, Lcom/customRobTop/BaseRobTopActivity;->receiver_:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/customRobTop/BaseRobTopActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateVisibilityMode()V
    .locals 2

    .prologue
    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 162
    .local v0, "currentapiVersion":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/customRobTop/BaseRobTopActivity;->setSystemUiVisilityMode()Landroid/view/View;

    .line 163
    :cond_0
    return-void
.end method
